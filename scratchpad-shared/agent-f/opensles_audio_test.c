/*
 * opensles_audio_test.c — Test OpenSLES audio playback on DAYU600
 *
 * Compile (on Mac):
 *   aarch64-linux-musl-g++ \
 *     --sysroot=/Users/yao/a2oh-source-audit/ohos-sdk/native/sysroot \
 *     -I/Users/yao/a2oh-source-audit/ohos-sdk/native/sysroot/usr/include \
 *     -I/Users/yao/a2oh-source-audit/ohos-sdk/native/sysroot/usr/include/SLES \
 *     -L/Users/yao/a2oh-source-audit/ohos-sdk/native/sysroot/usr/lib/aarch64-linux-ohos \
 *     -lOpenSLES -o opensles_audio_test opensles_audio_test.c
 *
 * Run on device:
 *   hdc file send opensles_audio_test /data/local/tmp/
 *   hdc shell "LD_LIBRARY_PATH=/system/lib64:/system/lib64/ndk /data/local/tmp/opensles_audio_test"
 *
 * Expected: prints "OpenSLES test: PASS" if engine creation + output mix works.
 */
#include <SLES/OpenSLES.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <unistd.h>

int main() {
    printf("=== OpenSLES Audio Test ===\n");

    SLresult result;
    SLObjectItf engineObject = NULL;
    SLObjectItf outputMixObject = NULL;

    /* Step 1: Create engine */
    printf("Creating engine...\n");
    result = slCreateEngine(&engineObject, 0, NULL, 0, NULL, NULL);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: slCreateEngine returned 0x%04x\n", result);
        return 1;
    }
    printf("  engine created OK\n");

    /* Step 2: Realize engine */
    result = (*engineObject)->Realize(engineObject, SL_BOOLEAN_FALSE);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: engine Realize returned 0x%04x\n", result);
        if (engineObject) (*engineObject)->Destroy(engineObject);
        return 1;
    }
    printf("  engine realized OK\n");

    /* Step 3: Get engine interface */
    SLEngineItf engineEngine;
    result = (*engineObject)->GetInterface(engineObject, SL_IID_ENGINE, &engineEngine);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: GetInterface(ENGINE) returned 0x%04x\n", result);
        if (engineObject) (*engineObject)->Destroy(engineObject);
        return 2;
    }
    printf("  engine interface OK\n");

    /* Step 4: Create output mix */
    printf("Creating output mix...\n");
    result = (*engineEngine)->CreateOutputMix(engineEngine, &outputMixObject, 0, NULL, NULL);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: CreateOutputMix returned 0x%04x\n", result);
        if (engineObject) (*engineObject)->Destroy(engineObject);
        return 3;
    }
    printf("  output mix created OK\n");

    /* Step 5: Realize output mix */
    result = (*outputMixObject)->Realize(outputMixObject, SL_BOOLEAN_FALSE);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: output mix Realize returned 0x%04x\n", result);
        if (outputMixObject) (*outputMixObject)->Destroy(outputMixObject);
        if (engineObject) (*engineObject)->Destroy(engineObject);
        return 4;
    }
    printf("  output mix realized OK\n");

    /* Step 6: Create audio player ( PCM output ) */
    printf("Creating audio player...\n");
    SLDataLocator_OutputMix loc_outmix = {
        SL_DATALOCATOR_OUTPUTMIX, outputMixObject
    };
    SLDataSink audioSnk = {&loc_outmix, NULL};

    SLDataLocator_BufferQueue loc_bufq = {
        SL_DATALOCATOR_BUFFERQUEUE, 1
    };
    SLDataFormat_PCM format_pcm = {
        SL_DATAFORMAT_PCM,       /* formatType */
        1,                        /* numChannels = mono */
        SL_SAMPLINGRATE_16,       /* samplesPerSec = 16000 Hz */
        SL_PCMSAMPLEFORMAT_FIXED_16, /* bitsPerSample = 16 bit */
        SL_PCMSAMPLEFORMAT_FIXED_16, /* containerSize = 16 bit */
        SL_SPEAKER_FRONT_CENTER, /* channelMask */
        SL_BYTEORDER_LITTLEENDIAN /* endianness */
    };
    SLDataSource audioSrc = {&loc_bufq, &format_pcm};

    SLObjectItf playerObject = NULL;
    const SLInterfaceID ids[] = {SL_IID_BUFFERQUEUE};
    const SLboolean req[] = {SL_BOOLEAN_TRUE};
    result = (*engineEngine)->CreateAudioPlayer(
        engineEngine, &playerObject,
        &audioSrc, &audioSnk,
        1, ids, req);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: CreateAudioPlayer returned 0x%04x\n", result);
        if (outputMixObject) (*outputMixObject)->Destroy(outputMixObject);
        if (engineObject) (*engineObject)->Destroy(engineObject);
        return 5;
    }
    printf("  player created OK\n");

    result = (*playerObject)->Realize(playerObject, SL_BOOLEAN_FALSE);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: player Realize returned 0x%04x\n", result);
        if (playerObject) (*playerObject)->Destroy(playerObject);
        if (outputMixObject) (*outputMixObject)->Destroy(outputMixObject);
        if (engineObject) (*engineObject)->Destroy(engineObject);
        return 6;
    }
    printf("  player realized OK\n");

    /* Step 7: Play a short beep (sine wave) */
    SLPlayItf playerPlay;
    result = (*playerObject)->GetInterface(playerObject, SL_IID_PLAY, &playerPlay);
    if (result != SL_RESULT_SUCCESS) {
        printf("FAIL: GetInterface(PLAY) returned 0x%04x\n", result);
    } else {
        printf("  play interface OK\n");
        result = (*playerPlay)->SetPlayState(playerPlay, SL_PLAYSTATE_PLAYING);
        printf("  SetPlayState PLAYING: 0x%04x\n", result);

        /* Enqueue a beep */
        short beep[8000]; /* 0.5 sec at 16kHz */
        for (int i = 0; i < 8000; i++) {
            beep[i] = (short)(32767 * 0.3 * sin(2 * 3.14159 * 440 * i / 16000));
        }
        SLBufferQueueItf bufferQueue;
        result = (*playerObject)->GetInterface(playerObject, SL_IID_BUFFERQUEUE, &bufferQueue);
        if (result == SL_RESULT_SUCCESS) {
            result = (*bufferQueue)->Enqueue(bufferQueue, beep, sizeof(beep));
            printf("  beep enqueued: 0x%04x\n", result);
        }

        /* Wait for playback */
        sleep(1);
    }

    printf("\n=== OpenSLES test: PASS ===\n");
    printf("OpenSLES engine=%p outputMix=%p player=%p\n",
           (void*)engineObject, (void*)outputMixObject, (void*)playerObject);

    /* Cleanup */
    if (playerObject) (*playerObject)->Destroy(playerObject);
    if (outputMixObject) (*outputMixObject)->Destroy(outputMixObject);
    if (engineObject) (*engineObject)->Destroy(engineObject);

    return 0;
}
