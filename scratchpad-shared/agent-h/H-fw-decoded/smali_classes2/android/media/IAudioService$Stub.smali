.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final blacklist PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

.field static final blacklist PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_abandonAudioFocus:I = 0x4e

.field static final blacklist TRANSACTION_abandonAudioFocusForTest:I = 0xc5

.field static final blacklist TRANSACTION_addAssistantServicesUids:I = 0xfa

.field static final blacklist TRANSACTION_addLoudnessCodecInfo:I = 0x10c

.field static final greylist-max-o TRANSACTION_addMixForPolicy:I = 0x7c

.field static final blacklist TRANSACTION_addOnDevicesForAttributesChangedListener:I = 0xa0

.field static final blacklist TRANSACTION_addSpatializerCompatibleAudioDevice:I = 0xe1

.field static final greylist-max-o TRANSACTION_adjustStreamVolume:I = 0xc

.field static final blacklist TRANSACTION_adjustStreamVolumeForUid:I = 0xb1

.field static final blacklist TRANSACTION_adjustStreamVolumeWithAttribution:I = 0xd

.field static final greylist-max-o TRANSACTION_adjustSuggestedStreamVolume:I = 0xb5

.field static final blacklist TRANSACTION_adjustSuggestedStreamVolumeForUid:I = 0xb2

.field static final blacklist TRANSACTION_adjustVolume:I = 0xb4

.field static final blacklist TRANSACTION_adjustVolumeGroupVolume:I = 0x21

.field static final blacklist TRANSACTION_areNavigationRepeatSoundEffectsEnabled:I = 0xbd

.field static final blacklist TRANSACTION_canBeSpatialized:I = 0xd8

.field static final blacklist TRANSACTION_cancelMuteAwaitConnection:I = 0xf2

.field static final blacklist TRANSACTION_clearFadeManagerConfigurationForFocusLoss:I = 0x110

.field static final blacklist TRANSACTION_clearPreferredDevicesForCapturePreset:I = 0xad

.field static final blacklist TRANSACTION_clearPreferredMixerAttributes:I = 0x102

.field static final greylist-max-o TRANSACTION_disableSafeMediaVolume:I = 0x67

.field static final greylist-max-o TRANSACTION_dispatchFocusChange:I = 0x8a

.field static final blacklist TRANSACTION_dispatchFocusChangeWithFade:I = 0x8b

.field static final blacklist TRANSACTION_enterAudioFocusFreezeForTest:I = 0xca

.field static final blacklist TRANSACTION_exitAudioFocusFreezeForTest:I = 0xcb

.field static final blacklist TRANSACTION_forceComputeCsdOnAllDevices:I = 0x6e

.field static final greylist-max-o TRANSACTION_forceRemoteSubmixFullVolume:I = 0x14

.field static final blacklist TRANSACTION_forceUseFrameworkMel:I = 0x6d

.field static final greylist-max-o TRANSACTION_forceVolumeControlStream:I = 0x54

.field static final blacklist TRANSACTION_getActiveAssistantServiceUids:I = 0xfe

.field static final greylist-max-o TRANSACTION_getActivePlaybackConfigurations:I = 0x88

.field static final greylist-max-o TRANSACTION_getActiveRecordingConfigurations:I = 0x85

.field static final blacklist TRANSACTION_getActualHeadTrackingMode:I = 0xe6

.field static final blacklist TRANSACTION_getAdditionalOutputDeviceDelay:I = 0xc2

.field static final blacklist TRANSACTION_getAllowedCapturePolicy:I = 0xa3

.field static final blacklist TRANSACTION_getAssistantServicesUids:I = 0xfd

.field static final blacklist TRANSACTION_getAudioProductStrategies:I = 0x25

.field static final blacklist TRANSACTION_getAudioVolumeGroups:I = 0x1a

.field static final blacklist TRANSACTION_getAvailableCommunicationDeviceIds:I = 0xb8

.field static final blacklist TRANSACTION_getBluetoothAudioDeviceCategory:I = 0x74

.field static final blacklist TRANSACTION_getCommunicationDevice:I = 0xba

.field static final blacklist TRANSACTION_getCsd:I = 0x6b

.field static final greylist-max-o TRANSACTION_getCurrentAudioFocus:I = 0x50

.field static final blacklist TRANSACTION_getDefaultVolumeInfo:I = 0xef

.field static final blacklist TRANSACTION_getDesiredHeadTrackingMode:I = 0xe4

.field static final blacklist TRANSACTION_getDeviceMaskForStream:I = 0xb7

.field static final blacklist TRANSACTION_getDeviceVolume:I = 0x11

.field static final blacklist TRANSACTION_getDeviceVolumeBehavior:I = 0xaa

.field static final blacklist TRANSACTION_getDevicesForAttributes:I = 0x9e

.field static final blacklist TRANSACTION_getDevicesForAttributesUnprotected:I = 0x9f

.field static final blacklist TRANSACTION_getEncodedSurroundMode:I = 0x44

.field static final blacklist TRANSACTION_getFadeManagerConfigurationForFocusLoss:I = 0x111

.field static final blacklist TRANSACTION_getFadeOutDurationOnFocusLossMillis:I = 0xc6

.field static final blacklist TRANSACTION_getFocusDuckedUidsForTest:I = 0xc7

.field static final blacklist TRANSACTION_getFocusFadeOutDurationForTest:I = 0xc8

.field static final greylist-max-o TRANSACTION_getFocusRampTimeMs:I = 0x89

.field static final blacklist TRANSACTION_getFocusStack:I = 0xf7

.field static final blacklist TRANSACTION_getFocusUnmuteDelayAfterFadeOutForTest:I = 0xc9

.field static final blacklist TRANSACTION_getHalVersion:I = 0x100

.field static final blacklist TRANSACTION_getIndependentStreamTypes:I = 0x58

.field static final blacklist TRANSACTION_getInputGainIndex:I = 0x2b

.field static final greylist-max-o TRANSACTION_getLastAudibleStreamVolume:I = 0x22

.field static final blacklist TRANSACTION_getLastAudibleVolumeForVolumeGroup:I = 0x1f

.field static final blacklist TRANSACTION_getLoudnessParams:I = 0x10e

.field static final blacklist TRANSACTION_getMaxAdditionalOutputDeviceDelay:I = 0xc3

.field static final blacklist TRANSACTION_getMaxInputGainIndex:I = 0x2c

.field static final blacklist TRANSACTION_getMinInputGainIndex:I = 0x2d

.field static final greylist-max-o TRANSACTION_getMode:I = 0x39

.field static final blacklist TRANSACTION_getMutingExpectedDevice:I = 0xf3

.field static final blacklist TRANSACTION_getNativeInterface:I = 0x1

.field static final blacklist TRANSACTION_getNonDefaultDevicesForStrategy:I = 0x9d

.field static final blacklist TRANSACTION_getOutputRs2UpperBound:I = 0x69

.field static final blacklist TRANSACTION_getPreferredDevicesForCapturePreset:I = 0xae

.field static final blacklist TRANSACTION_getPreferredDevicesForStrategy:I = 0x9a

.field static final blacklist TRANSACTION_getRegisteredPolicyMixes:I = 0x7a

.field static final blacklist TRANSACTION_getReportedSurroundFormats:I = 0x40

.field static final greylist-max-o TRANSACTION_getRingerModeExternal:I = 0x32

.field static final greylist-max-o TRANSACTION_getRingerModeInternal:I = 0x33

.field static final greylist-max-o TRANSACTION_getRingtonePlayer:I = 0x56

.field static final blacklist TRANSACTION_getSpatializedChannelMasks:I = 0xd9

.field static final blacklist TRANSACTION_getSpatializerCompatibleAudioDevices:I = 0xe0

.field static final blacklist TRANSACTION_getSpatializerImmersiveAudioLevel:I = 0xce

.field static final blacklist TRANSACTION_getSpatializerOutput:I = 0xeb

.field static final blacklist TRANSACTION_getSpatializerParameter:I = 0xea

.field static final greylist-max-o TRANSACTION_getStreamMaxVolume:I = 0x19

.field static final greylist-max-o TRANSACTION_getStreamMinVolume:I = 0x18

.field static final blacklist TRANSACTION_getStreamTypeAlias:I = 0x59

.field static final greylist-max-o TRANSACTION_getStreamVolume:I = 0x17

.field static final blacklist TRANSACTION_getSupportedHeadTrackingModes:I = 0xe5

.field static final blacklist TRANSACTION_getSupportedSystemUsages:I = 0x24

.field static final blacklist TRANSACTION_getSurroundFormats:I = 0x3f

.field static final greylist-max-o TRANSACTION_getUiSoundsStreamType:I = 0x57

.field static final greylist-max-o TRANSACTION_getVibrateSetting:I = 0x36

.field static final blacklist TRANSACTION_getVolumeController:I = 0x61

.field static final blacklist TRANSACTION_getVolumeGroupMaxVolumeIndex:I = 0x1d

.field static final blacklist TRANSACTION_getVolumeGroupMinVolumeIndex:I = 0x1e

.field static final blacklist TRANSACTION_getVolumeGroupVolumeIndex:I = 0x1c

.field static final blacklist TRANSACTION_getVolumePolicy:I = 0x81

.field static final blacklist TRANSACTION_handleBluetoothActiveDeviceChanged:I = 0x8d

.field static final blacklist TRANSACTION_handleVolumeKey:I = 0x12

.field static final blacklist TRANSACTION_hasHapticChannels:I = 0x96

.field static final blacklist TRANSACTION_hasHeadTracker:I = 0xd2

.field static final blacklist TRANSACTION_hasRegisteredDynamicPolicy:I = 0x82

.field static final greylist-max-o TRANSACTION_isAudioServerRunning:I = 0x91

.field static final greylist-max-o TRANSACTION_isBluetoothA2dpOn:I = 0x4c

.field static final blacklist TRANSACTION_isBluetoothAudioDeviceCategoryFixed:I = 0x75

.field static final greylist-max-o TRANSACTION_isBluetoothScoOn:I = 0x4a

.field static final blacklist TRANSACTION_isBluetoothVariableLatencyEnabled:I = 0x107

.field static final blacklist TRANSACTION_isCallScreeningModeSupported:I = 0x97

.field static final greylist-max-o TRANSACTION_isCameraSoundForced:I = 0x5f

.field static final blacklist TRANSACTION_isCsdAsAFeatureAvailable:I = 0x70

.field static final blacklist TRANSACTION_isCsdAsAFeatureEnabled:I = 0x71

.field static final blacklist TRANSACTION_isCsdEnabled:I = 0x6f

.field static final greylist-max-o TRANSACTION_isHdmiSystemAudioSupported:I = 0x77

.field static final blacklist TRANSACTION_isHeadTrackerAvailable:I = 0xd5

.field static final blacklist TRANSACTION_isHeadTrackerEnabled:I = 0xd4

.field static final blacklist TRANSACTION_isHomeSoundEffectEnabled:I = 0xbf

.field static final blacklist TRANSACTION_isHotwordStreamSupported:I = 0x28

.field static final blacklist TRANSACTION_isInputGainFixed:I = 0x2e

.field static final greylist-max-o TRANSACTION_isMasterMute:I = 0x15

.field static final blacklist TRANSACTION_isMicrophoneMuted:I = 0x26

.field static final blacklist TRANSACTION_isMusicActive:I = 0xb6

.field static final blacklist TRANSACTION_isPstnCallAudioInterceptable:I = 0xf0

.field static final blacklist TRANSACTION_isSpatializerAvailable:I = 0xd0

.field static final blacklist TRANSACTION_isSpatializerAvailableForDevice:I = 0xd1

.field static final blacklist TRANSACTION_isSpatializerEnabled:I = 0xcf

.field static final greylist-max-o TRANSACTION_isSpeakerphoneOn:I = 0x46

.field static final greylist-max-o TRANSACTION_isStreamAffectedByMute:I = 0x65

.field static final greylist-max-o TRANSACTION_isStreamAffectedByRingerMode:I = 0x64

.field static final blacklist TRANSACTION_isStreamMutableByUi:I = 0x66

.field static final greylist-max-o TRANSACTION_isStreamMute:I = 0x13

.field static final blacklist TRANSACTION_isSurroundFormatEnabled:I = 0x42

.field static final blacklist TRANSACTION_isUltrasoundSupported:I = 0x27

.field static final greylist-max-o TRANSACTION_isValidRingerMode:I = 0x34

.field static final blacklist TRANSACTION_isVolumeControlUsingVolumeGroups:I = 0x5a

.field static final blacklist TRANSACTION_isVolumeFixed:I = 0xee

.field static final blacklist TRANSACTION_isVolumeGroupMuted:I = 0x20

.field static final greylist-max-o TRANSACTION_loadSoundEffects:I = 0x3c

.field static final blacklist TRANSACTION_lowerVolumeToRs1:I = 0x68

.field static final blacklist TRANSACTION_muteAwaitConnection:I = 0xf1

.field static final greylist-max-o TRANSACTION_notifyVolumeControllerVisible:I = 0x62

.field static final blacklist TRANSACTION_permissionUpdateBarrier:I = 0xb

.field static final greylist-max-o TRANSACTION_playSoundEffect:I = 0x3a

.field static final greylist-max-o TRANSACTION_playSoundEffectVolume:I = 0x3b

.field static final greylist-max-o TRANSACTION_playerAttributes:I = 0x3

.field static final greylist-max-o TRANSACTION_playerEvent:I = 0x4

.field static final greylist-max-o TRANSACTION_playerHasOpPlayAudio:I = 0x8c

.field static final blacklist TRANSACTION_playerSessionId:I = 0x9

.field static final blacklist TRANSACTION_portEvent:I = 0xa

.field static final blacklist TRANSACTION_recenterHeadTracker:I = 0xe8

.field static final blacklist TRANSACTION_recorderEvent:I = 0x7

.field static final greylist-max-o TRANSACTION_registerAudioPolicy:I = 0x78

.field static final greylist-max-o TRANSACTION_registerAudioServerStateDispatcher:I = 0x8f

.field static final blacklist TRANSACTION_registerCapturePresetDevicesRoleDispatcher:I = 0xaf

.field static final blacklist TRANSACTION_registerCommunicationDeviceDispatcher:I = 0xbb

.field static final blacklist TRANSACTION_registerDeviceVolumeBehaviorDispatcher:I = 0xf6

.field static final blacklist TRANSACTION_registerDeviceVolumeDispatcherForAbsoluteVolume:I = 0xff

.field static final blacklist TRANSACTION_registerHeadToSoundstagePoseCallback:I = 0xde

.field static final blacklist TRANSACTION_registerLoudnessCodecUpdatesDispatcher:I = 0x108

.field static final blacklist TRANSACTION_registerModeDispatcher:I = 0xcc

.field static final blacklist TRANSACTION_registerMuteAwaitConnectionDispatcher:I = 0xf4

.field static final greylist-max-o TRANSACTION_registerPlaybackCallback:I = 0x86

.field static final blacklist TRANSACTION_registerPreferredMixerAttributesDispatcher:I = 0x103

.field static final greylist-max-o TRANSACTION_registerRecordingCallback:I = 0x83

.field static final blacklist TRANSACTION_registerSpatializerCallback:I = 0xda

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackerAvailableCallback:I = 0xd6

.field static final blacklist TRANSACTION_registerSpatializerHeadTrackingCallback:I = 0xdc

.field static final blacklist TRANSACTION_registerSpatializerOutputCallback:I = 0xec

.field static final blacklist TRANSACTION_registerStrategyNonDefaultDevicesDispatcher:I = 0xa6

.field static final blacklist TRANSACTION_registerStrategyPreferredDevicesDispatcher:I = 0xa4

.field static final blacklist TRANSACTION_registerStreamAliasingDispatcher:I = 0x5b

.field static final greylist-max-o TRANSACTION_releasePlayer:I = 0x5

.field static final blacklist TRANSACTION_releaseRecorder:I = 0x8

.field static final greylist-max-o TRANSACTION_reloadAudioSettings:I = 0x3e

.field static final blacklist TRANSACTION_removeAssistantServicesUids:I = 0xfb

.field static final blacklist TRANSACTION_removeDeviceAsNonDefaultForStrategy:I = 0x9c

.field static final blacklist TRANSACTION_removeLoudnessCodecInfo:I = 0x10d

.field static final greylist-max-o TRANSACTION_removeMixForPolicy:I = 0x7d

.field static final blacklist TRANSACTION_removeOnDevicesForAttributesChangedListener:I = 0xa1

.field static final blacklist TRANSACTION_removePreferredDevicesForStrategy:I = 0x99

.field static final blacklist TRANSACTION_removeSpatializerCompatibleAudioDevice:I = 0xe2

.field static final blacklist TRANSACTION_removeUidDeviceAffinity:I = 0x93

.field static final blacklist TRANSACTION_removeUserIdDeviceAffinity:I = 0x95

.field static final greylist-max-o TRANSACTION_requestAudioFocus:I = 0x4d

.field static final blacklist TRANSACTION_requestAudioFocusForTest:I = 0xc4

.field static final blacklist TRANSACTION_sendFocusLoss:I = 0xf9

.field static final blacklist TRANSACTION_sendFocusLossAndUpdate:I = 0xf8

.field static final blacklist TRANSACTION_setA2dpSuspended:I = 0x48

.field static final blacklist TRANSACTION_setActiveAssistantServiceUids:I = 0xfc

.field static final blacklist TRANSACTION_setAdditionalOutputDeviceDelay:I = 0xc1

.field static final blacklist TRANSACTION_setAllowedCapturePolicy:I = 0xa2

.field static final greylist-max-o TRANSACTION_setBluetoothA2dpOn:I = 0x4b

.field static final blacklist TRANSACTION_setBluetoothAudioDeviceCategory:I = 0x73

.field static final greylist-max-o TRANSACTION_setBluetoothScoOn:I = 0x47

.field static final blacklist TRANSACTION_setBluetoothVariableLatencyEnabled:I = 0x106

.field static final blacklist TRANSACTION_setCommunicationDevice:I = 0xb9

.field static final blacklist TRANSACTION_setCsd:I = 0x6c

.field static final blacklist TRANSACTION_setCsdAsAFeatureEnabled:I = 0x72

.field static final blacklist TRANSACTION_setDesiredHeadTrackingMode:I = 0xe3

.field static final blacklist TRANSACTION_setDeviceAsNonDefaultForStrategy:I = 0x9b

.field static final blacklist TRANSACTION_setDeviceVolume:I = 0x10

.field static final blacklist TRANSACTION_setDeviceVolumeBehavior:I = 0xa9

.field static final blacklist TRANSACTION_setEnableHardening:I = 0x113

.field static final blacklist TRANSACTION_setEncodedSurroundMode:I = 0x43

.field static final blacklist TRANSACTION_setFadeManagerConfigurationForFocusLoss:I = 0x10f

.field static final greylist-max-o TRANSACTION_setFocusPropertiesForPolicy:I = 0x7f

.field static final greylist-max-o TRANSACTION_setFocusRequestResultFromExtPolicy:I = 0x8e

.field static final greylist-max-o TRANSACTION_setHdmiSystemAudioSupported:I = 0x76

.field static final blacklist TRANSACTION_setHeadTrackerEnabled:I = 0xd3

.field static final blacklist TRANSACTION_setHomeSoundEffectEnabled:I = 0xc0

.field static final blacklist TRANSACTION_setInputGainIndex:I = 0x2a

.field static final blacklist TRANSACTION_setLeAudioSuspended:I = 0x49

.field static final greylist-max-o TRANSACTION_setMasterMute:I = 0x16

.field static final greylist-max-o TRANSACTION_setMicrophoneMute:I = 0x29

.field static final blacklist TRANSACTION_setMicrophoneMuteFromSwitch:I = 0x2f

.field static final greylist-max-o TRANSACTION_setMode:I = 0x38

.field static final blacklist TRANSACTION_setMultiAudioFocusEnabled:I = 0xab

.field static final blacklist TRANSACTION_setNavigationRepeatSoundEffectsEnabled:I = 0xbe

.field static final blacklist TRANSACTION_setNotifAliasRingForTest:I = 0x5c

.field static final blacklist TRANSACTION_setOutputRs2UpperBound:I = 0x6a

.field static final blacklist TRANSACTION_setPreferredDevicesForCapturePreset:I = 0xac

.field static final blacklist TRANSACTION_setPreferredDevicesForStrategy:I = 0x98

.field static final blacklist TRANSACTION_setPreferredMixerAttributes:I = 0x101

.field static final greylist-max-o TRANSACTION_setRingerModeExternal:I = 0x30

.field static final greylist-max-o TRANSACTION_setRingerModeInternal:I = 0x31

.field static final greylist-max-o TRANSACTION_setRingtonePlayer:I = 0x55

.field static final blacklist TRANSACTION_setRttEnabled:I = 0xa8

.field static final blacklist TRANSACTION_setSpatializerEnabled:I = 0xd7

.field static final blacklist TRANSACTION_setSpatializerGlobalTransform:I = 0xe7

.field static final blacklist TRANSACTION_setSpatializerParameter:I = 0xe9

.field static final greylist-max-o TRANSACTION_setSpeakerphoneOn:I = 0x45

.field static final greylist-max-o TRANSACTION_setStreamVolume:I = 0xe

.field static final blacklist TRANSACTION_setStreamVolumeForUid:I = 0xb3

.field static final blacklist TRANSACTION_setStreamVolumeWithAttribution:I = 0xf

.field static final blacklist TRANSACTION_setSupportedSystemUsages:I = 0x23

.field static final blacklist TRANSACTION_setSurroundFormatEnabled:I = 0x41

.field static final blacklist TRANSACTION_setTestDeviceConnectionState:I = 0xf5

.field static final blacklist TRANSACTION_setUidDeviceAffinity:I = 0x92

.field static final blacklist TRANSACTION_setUserIdDeviceAffinity:I = 0x94

.field static final greylist-max-o TRANSACTION_setVibrateSetting:I = 0x35

.field static final greylist-max-o TRANSACTION_setVolumeController:I = 0x60

.field static final blacklist TRANSACTION_setVolumeControllerLongPressTimeoutEnabled:I = 0x63

.field static final blacklist TRANSACTION_setVolumeGroupVolumeIndex:I = 0x1b

.field static final greylist-max-o TRANSACTION_setVolumePolicy:I = 0x80

.field static final greylist-max-o TRANSACTION_setWiredDeviceConnectionState:I = 0x5d

.field static final blacklist TRANSACTION_shouldNotificationSoundPlay:I = 0x112

.field static final greylist-max-o TRANSACTION_shouldVibrate:I = 0x37

.field static final greylist-max-o TRANSACTION_startBluetoothSco:I = 0x51

.field static final greylist-max-o TRANSACTION_startBluetoothScoVirtualCall:I = 0x52

.field static final blacklist TRANSACTION_startLoudnessCodecUpdates:I = 0x10a

.field static final greylist-max-o TRANSACTION_startWatchingRoutes:I = 0x5e

.field static final greylist-max-o TRANSACTION_stopBluetoothSco:I = 0x53

.field static final blacklist TRANSACTION_stopLoudnessCodecUpdates:I = 0x10b

.field static final blacklist TRANSACTION_supportsBluetoothVariableLatency:I = 0x105

.field static final greylist-max-o TRANSACTION_trackPlayer:I = 0x2

.field static final blacklist TRANSACTION_trackRecorder:I = 0x6

.field static final greylist-max-o TRANSACTION_unloadSoundEffects:I = 0x3d

.field static final greylist-max-o TRANSACTION_unregisterAudioFocusClient:I = 0x4f

.field static final blacklist TRANSACTION_unregisterAudioPolicy:I = 0x7b

.field static final greylist-max-o TRANSACTION_unregisterAudioPolicyAsync:I = 0x79

.field static final greylist-max-o TRANSACTION_unregisterAudioServerStateDispatcher:I = 0x90

.field static final blacklist TRANSACTION_unregisterCapturePresetDevicesRoleDispatcher:I = 0xb0

.field static final blacklist TRANSACTION_unregisterCommunicationDeviceDispatcher:I = 0xbc

.field static final blacklist TRANSACTION_unregisterHeadToSoundstagePoseCallback:I = 0xdf

.field static final blacklist TRANSACTION_unregisterLoudnessCodecUpdatesDispatcher:I = 0x109

.field static final blacklist TRANSACTION_unregisterModeDispatcher:I = 0xcd

.field static final greylist-max-o TRANSACTION_unregisterPlaybackCallback:I = 0x87

.field static final blacklist TRANSACTION_unregisterPreferredMixerAttributesDispatcher:I = 0x104

.field static final greylist-max-o TRANSACTION_unregisterRecordingCallback:I = 0x84

.field static final blacklist TRANSACTION_unregisterSpatializerCallback:I = 0xdb

.field static final blacklist TRANSACTION_unregisterSpatializerHeadTrackingCallback:I = 0xdd

.field static final blacklist TRANSACTION_unregisterSpatializerOutputCallback:I = 0xed

.field static final blacklist TRANSACTION_unregisterStrategyNonDefaultDevicesDispatcher:I = 0xa7

.field static final blacklist TRANSACTION_unregisterStrategyPreferredDevicesDispatcher:I = 0xa5

.field static final blacklist TRANSACTION_updateMixingRulesForPolicy:I = 0x7e


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 9487
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    .line 9493
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    .line 9511
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    .line 9517
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9523
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    .line 9529
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    .line 9535
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    .line 9850
    const-string v2, "android.permission.QUERY_AUDIO_STATE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

    .line 9864
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    .line 9870
    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1023
    nop

    .line 1024
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 1023
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/IAudioService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1025
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .locals 2
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 1013
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1014
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1015
    if-eqz p1, :cond_0

    .line 1018
    iput-object p1, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1019
    return-void

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1032
    if-nez p0, :cond_0

    .line 1033
    const/4 v0, 0x0

    return-object v0

    .line 1035
    :cond_0
    const-string v0, "android.media.IAudioService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1036
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 1037
    move-object v1, v0

    check-cast v1, Landroid/media/IAudioService;

    return-object v1

    .line 1039
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 1048
    packed-switch p0, :pswitch_data_0

    .line 2152
    const/4 v0, 0x0

    return-object v0

    .line 2148
    :pswitch_0
    const-string v0, "setEnableHardening"

    return-object v0

    .line 2144
    :pswitch_1
    const-string v0, "shouldNotificationSoundPlay"

    return-object v0

    .line 2140
    :pswitch_2
    const-string v0, "getFadeManagerConfigurationForFocusLoss"

    return-object v0

    .line 2136
    :pswitch_3
    const-string v0, "clearFadeManagerConfigurationForFocusLoss"

    return-object v0

    .line 2132
    :pswitch_4
    const-string v0, "setFadeManagerConfigurationForFocusLoss"

    return-object v0

    .line 2128
    :pswitch_5
    const-string v0, "getLoudnessParams"

    return-object v0

    .line 2124
    :pswitch_6
    const-string v0, "removeLoudnessCodecInfo"

    return-object v0

    .line 2120
    :pswitch_7
    const-string v0, "addLoudnessCodecInfo"

    return-object v0

    .line 2116
    :pswitch_8
    const-string v0, "stopLoudnessCodecUpdates"

    return-object v0

    .line 2112
    :pswitch_9
    const-string v0, "startLoudnessCodecUpdates"

    return-object v0

    .line 2108
    :pswitch_a
    const-string v0, "unregisterLoudnessCodecUpdatesDispatcher"

    return-object v0

    .line 2104
    :pswitch_b
    const-string v0, "registerLoudnessCodecUpdatesDispatcher"

    return-object v0

    .line 2100
    :pswitch_c
    const-string v0, "isBluetoothVariableLatencyEnabled"

    return-object v0

    .line 2096
    :pswitch_d
    const-string v0, "setBluetoothVariableLatencyEnabled"

    return-object v0

    .line 2092
    :pswitch_e
    const-string v0, "supportsBluetoothVariableLatency"

    return-object v0

    .line 2088
    :pswitch_f
    const-string v0, "unregisterPreferredMixerAttributesDispatcher"

    return-object v0

    .line 2084
    :pswitch_10
    const-string v0, "registerPreferredMixerAttributesDispatcher"

    return-object v0

    .line 2080
    :pswitch_11
    const-string v0, "clearPreferredMixerAttributes"

    return-object v0

    .line 2076
    :pswitch_12
    const-string v0, "setPreferredMixerAttributes"

    return-object v0

    .line 2072
    :pswitch_13
    const-string v0, "getHalVersion"

    return-object v0

    .line 2068
    :pswitch_14
    const-string v0, "registerDeviceVolumeDispatcherForAbsoluteVolume"

    return-object v0

    .line 2064
    :pswitch_15
    const-string v0, "getActiveAssistantServiceUids"

    return-object v0

    .line 2060
    :pswitch_16
    const-string v0, "getAssistantServicesUids"

    return-object v0

    .line 2056
    :pswitch_17
    const-string v0, "setActiveAssistantServiceUids"

    return-object v0

    .line 2052
    :pswitch_18
    const-string v0, "removeAssistantServicesUids"

    return-object v0

    .line 2048
    :pswitch_19
    const-string v0, "addAssistantServicesUids"

    return-object v0

    .line 2044
    :pswitch_1a
    const-string v0, "sendFocusLoss"

    return-object v0

    .line 2040
    :pswitch_1b
    const-string v0, "sendFocusLossAndUpdate"

    return-object v0

    .line 2036
    :pswitch_1c
    const-string v0, "getFocusStack"

    return-object v0

    .line 2032
    :pswitch_1d
    const-string v0, "registerDeviceVolumeBehaviorDispatcher"

    return-object v0

    .line 2028
    :pswitch_1e
    const-string v0, "setTestDeviceConnectionState"

    return-object v0

    .line 2024
    :pswitch_1f
    const-string v0, "registerMuteAwaitConnectionDispatcher"

    return-object v0

    .line 2020
    :pswitch_20
    const-string v0, "getMutingExpectedDevice"

    return-object v0

    .line 2016
    :pswitch_21
    const-string v0, "cancelMuteAwaitConnection"

    return-object v0

    .line 2012
    :pswitch_22
    const-string v0, "muteAwaitConnection"

    return-object v0

    .line 2008
    :pswitch_23
    const-string v0, "isPstnCallAudioInterceptable"

    return-object v0

    .line 2004
    :pswitch_24
    const-string v0, "getDefaultVolumeInfo"

    return-object v0

    .line 2000
    :pswitch_25
    const-string v0, "isVolumeFixed"

    return-object v0

    .line 1996
    :pswitch_26
    const-string v0, "unregisterSpatializerOutputCallback"

    return-object v0

    .line 1992
    :pswitch_27
    const-string v0, "registerSpatializerOutputCallback"

    return-object v0

    .line 1988
    :pswitch_28
    const-string v0, "getSpatializerOutput"

    return-object v0

    .line 1984
    :pswitch_29
    const-string v0, "getSpatializerParameter"

    return-object v0

    .line 1980
    :pswitch_2a
    const-string v0, "setSpatializerParameter"

    return-object v0

    .line 1976
    :pswitch_2b
    const-string v0, "recenterHeadTracker"

    return-object v0

    .line 1972
    :pswitch_2c
    const-string v0, "setSpatializerGlobalTransform"

    return-object v0

    .line 1968
    :pswitch_2d
    const-string v0, "getActualHeadTrackingMode"

    return-object v0

    .line 1964
    :pswitch_2e
    const-string v0, "getSupportedHeadTrackingModes"

    return-object v0

    .line 1960
    :pswitch_2f
    const-string v0, "getDesiredHeadTrackingMode"

    return-object v0

    .line 1956
    :pswitch_30
    const-string v0, "setDesiredHeadTrackingMode"

    return-object v0

    .line 1952
    :pswitch_31
    const-string v0, "removeSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1948
    :pswitch_32
    const-string v0, "addSpatializerCompatibleAudioDevice"

    return-object v0

    .line 1944
    :pswitch_33
    const-string v0, "getSpatializerCompatibleAudioDevices"

    return-object v0

    .line 1940
    :pswitch_34
    const-string v0, "unregisterHeadToSoundstagePoseCallback"

    return-object v0

    .line 1936
    :pswitch_35
    const-string v0, "registerHeadToSoundstagePoseCallback"

    return-object v0

    .line 1932
    :pswitch_36
    const-string v0, "unregisterSpatializerHeadTrackingCallback"

    return-object v0

    .line 1928
    :pswitch_37
    const-string v0, "registerSpatializerHeadTrackingCallback"

    return-object v0

    .line 1924
    :pswitch_38
    const-string v0, "unregisterSpatializerCallback"

    return-object v0

    .line 1920
    :pswitch_39
    const-string v0, "registerSpatializerCallback"

    return-object v0

    .line 1916
    :pswitch_3a
    const-string v0, "getSpatializedChannelMasks"

    return-object v0

    .line 1912
    :pswitch_3b
    const-string v0, "canBeSpatialized"

    return-object v0

    .line 1908
    :pswitch_3c
    const-string v0, "setSpatializerEnabled"

    return-object v0

    .line 1904
    :pswitch_3d
    const-string v0, "registerSpatializerHeadTrackerAvailableCallback"

    return-object v0

    .line 1900
    :pswitch_3e
    const-string v0, "isHeadTrackerAvailable"

    return-object v0

    .line 1896
    :pswitch_3f
    const-string v0, "isHeadTrackerEnabled"

    return-object v0

    .line 1892
    :pswitch_40
    const-string v0, "setHeadTrackerEnabled"

    return-object v0

    .line 1888
    :pswitch_41
    const-string v0, "hasHeadTracker"

    return-object v0

    .line 1884
    :pswitch_42
    const-string v0, "isSpatializerAvailableForDevice"

    return-object v0

    .line 1880
    :pswitch_43
    const-string v0, "isSpatializerAvailable"

    return-object v0

    .line 1876
    :pswitch_44
    const-string v0, "isSpatializerEnabled"

    return-object v0

    .line 1872
    :pswitch_45
    const-string v0, "getSpatializerImmersiveAudioLevel"

    return-object v0

    .line 1868
    :pswitch_46
    const-string v0, "unregisterModeDispatcher"

    return-object v0

    .line 1864
    :pswitch_47
    const-string v0, "registerModeDispatcher"

    return-object v0

    .line 1860
    :pswitch_48
    const-string v0, "exitAudioFocusFreezeForTest"

    return-object v0

    .line 1856
    :pswitch_49
    const-string v0, "enterAudioFocusFreezeForTest"

    return-object v0

    .line 1852
    :pswitch_4a
    const-string v0, "getFocusUnmuteDelayAfterFadeOutForTest"

    return-object v0

    .line 1848
    :pswitch_4b
    const-string v0, "getFocusFadeOutDurationForTest"

    return-object v0

    .line 1844
    :pswitch_4c
    const-string v0, "getFocusDuckedUidsForTest"

    return-object v0

    .line 1840
    :pswitch_4d
    const-string v0, "getFadeOutDurationOnFocusLossMillis"

    return-object v0

    .line 1836
    :pswitch_4e
    const-string v0, "abandonAudioFocusForTest"

    return-object v0

    .line 1832
    :pswitch_4f
    const-string v0, "requestAudioFocusForTest"

    return-object v0

    .line 1828
    :pswitch_50
    const-string v0, "getMaxAdditionalOutputDeviceDelay"

    return-object v0

    .line 1824
    :pswitch_51
    const-string v0, "getAdditionalOutputDeviceDelay"

    return-object v0

    .line 1820
    :pswitch_52
    const-string v0, "setAdditionalOutputDeviceDelay"

    return-object v0

    .line 1816
    :pswitch_53
    const-string v0, "setHomeSoundEffectEnabled"

    return-object v0

    .line 1812
    :pswitch_54
    const-string v0, "isHomeSoundEffectEnabled"

    return-object v0

    .line 1808
    :pswitch_55
    const-string v0, "setNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1804
    :pswitch_56
    const-string v0, "areNavigationRepeatSoundEffectsEnabled"

    return-object v0

    .line 1800
    :pswitch_57
    const-string v0, "unregisterCommunicationDeviceDispatcher"

    return-object v0

    .line 1796
    :pswitch_58
    const-string v0, "registerCommunicationDeviceDispatcher"

    return-object v0

    .line 1792
    :pswitch_59
    const-string v0, "getCommunicationDevice"

    return-object v0

    .line 1788
    :pswitch_5a
    const-string v0, "setCommunicationDevice"

    return-object v0

    .line 1784
    :pswitch_5b
    const-string v0, "getAvailableCommunicationDeviceIds"

    return-object v0

    .line 1780
    :pswitch_5c
    const-string v0, "getDeviceMaskForStream"

    return-object v0

    .line 1776
    :pswitch_5d
    const-string v0, "isMusicActive"

    return-object v0

    .line 1772
    :pswitch_5e
    const-string v0, "adjustSuggestedStreamVolume"

    return-object v0

    .line 1768
    :pswitch_5f
    const-string v0, "adjustVolume"

    return-object v0

    .line 1764
    :pswitch_60
    const-string v0, "setStreamVolumeForUid"

    return-object v0

    .line 1760
    :pswitch_61
    const-string v0, "adjustSuggestedStreamVolumeForUid"

    return-object v0

    .line 1756
    :pswitch_62
    const-string v0, "adjustStreamVolumeForUid"

    return-object v0

    .line 1752
    :pswitch_63
    const-string v0, "unregisterCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1748
    :pswitch_64
    const-string v0, "registerCapturePresetDevicesRoleDispatcher"

    return-object v0

    .line 1744
    :pswitch_65
    const-string v0, "getPreferredDevicesForCapturePreset"

    return-object v0

    .line 1740
    :pswitch_66
    const-string v0, "clearPreferredDevicesForCapturePreset"

    return-object v0

    .line 1736
    :pswitch_67
    const-string v0, "setPreferredDevicesForCapturePreset"

    return-object v0

    .line 1732
    :pswitch_68
    const-string v0, "setMultiAudioFocusEnabled"

    return-object v0

    .line 1728
    :pswitch_69
    const-string v0, "getDeviceVolumeBehavior"

    return-object v0

    .line 1724
    :pswitch_6a
    const-string v0, "setDeviceVolumeBehavior"

    return-object v0

    .line 1720
    :pswitch_6b
    const-string v0, "setRttEnabled"

    return-object v0

    .line 1716
    :pswitch_6c
    const-string v0, "unregisterStrategyNonDefaultDevicesDispatcher"

    return-object v0

    .line 1712
    :pswitch_6d
    const-string v0, "registerStrategyNonDefaultDevicesDispatcher"

    return-object v0

    .line 1708
    :pswitch_6e
    const-string v0, "unregisterStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1704
    :pswitch_6f
    const-string v0, "registerStrategyPreferredDevicesDispatcher"

    return-object v0

    .line 1700
    :pswitch_70
    const-string v0, "getAllowedCapturePolicy"

    return-object v0

    .line 1696
    :pswitch_71
    const-string v0, "setAllowedCapturePolicy"

    return-object v0

    .line 1692
    :pswitch_72
    const-string v0, "removeOnDevicesForAttributesChangedListener"

    return-object v0

    .line 1688
    :pswitch_73
    const-string v0, "addOnDevicesForAttributesChangedListener"

    return-object v0

    .line 1684
    :pswitch_74
    const-string v0, "getDevicesForAttributesUnprotected"

    return-object v0

    .line 1680
    :pswitch_75
    const-string v0, "getDevicesForAttributes"

    return-object v0

    .line 1676
    :pswitch_76
    const-string v0, "getNonDefaultDevicesForStrategy"

    return-object v0

    .line 1672
    :pswitch_77
    const-string v0, "removeDeviceAsNonDefaultForStrategy"

    return-object v0

    .line 1668
    :pswitch_78
    const-string v0, "setDeviceAsNonDefaultForStrategy"

    return-object v0

    .line 1664
    :pswitch_79
    const-string v0, "getPreferredDevicesForStrategy"

    return-object v0

    .line 1660
    :pswitch_7a
    const-string v0, "removePreferredDevicesForStrategy"

    return-object v0

    .line 1656
    :pswitch_7b
    const-string v0, "setPreferredDevicesForStrategy"

    return-object v0

    .line 1652
    :pswitch_7c
    const-string v0, "isCallScreeningModeSupported"

    return-object v0

    .line 1648
    :pswitch_7d
    const-string v0, "hasHapticChannels"

    return-object v0

    .line 1644
    :pswitch_7e
    const-string v0, "removeUserIdDeviceAffinity"

    return-object v0

    .line 1640
    :pswitch_7f
    const-string v0, "setUserIdDeviceAffinity"

    return-object v0

    .line 1636
    :pswitch_80
    const-string v0, "removeUidDeviceAffinity"

    return-object v0

    .line 1632
    :pswitch_81
    const-string v0, "setUidDeviceAffinity"

    return-object v0

    .line 1628
    :pswitch_82
    const-string v0, "isAudioServerRunning"

    return-object v0

    .line 1624
    :pswitch_83
    const-string v0, "unregisterAudioServerStateDispatcher"

    return-object v0

    .line 1620
    :pswitch_84
    const-string v0, "registerAudioServerStateDispatcher"

    return-object v0

    .line 1616
    :pswitch_85
    const-string v0, "setFocusRequestResultFromExtPolicy"

    return-object v0

    .line 1612
    :pswitch_86
    const-string v0, "handleBluetoothActiveDeviceChanged"

    return-object v0

    .line 1608
    :pswitch_87
    const-string v0, "playerHasOpPlayAudio"

    return-object v0

    .line 1604
    :pswitch_88
    const-string v0, "dispatchFocusChangeWithFade"

    return-object v0

    .line 1600
    :pswitch_89
    const-string v0, "dispatchFocusChange"

    return-object v0

    .line 1596
    :pswitch_8a
    const-string v0, "getFocusRampTimeMs"

    return-object v0

    .line 1592
    :pswitch_8b
    const-string v0, "getActivePlaybackConfigurations"

    return-object v0

    .line 1588
    :pswitch_8c
    const-string v0, "unregisterPlaybackCallback"

    return-object v0

    .line 1584
    :pswitch_8d
    const-string v0, "registerPlaybackCallback"

    return-object v0

    .line 1580
    :pswitch_8e
    const-string v0, "getActiveRecordingConfigurations"

    return-object v0

    .line 1576
    :pswitch_8f
    const-string v0, "unregisterRecordingCallback"

    return-object v0

    .line 1572
    :pswitch_90
    const-string v0, "registerRecordingCallback"

    return-object v0

    .line 1568
    :pswitch_91
    const-string v0, "hasRegisteredDynamicPolicy"

    return-object v0

    .line 1564
    :pswitch_92
    const-string v0, "getVolumePolicy"

    return-object v0

    .line 1560
    :pswitch_93
    const-string v0, "setVolumePolicy"

    return-object v0

    .line 1556
    :pswitch_94
    const-string v0, "setFocusPropertiesForPolicy"

    return-object v0

    .line 1552
    :pswitch_95
    const-string v0, "updateMixingRulesForPolicy"

    return-object v0

    .line 1548
    :pswitch_96
    const-string v0, "removeMixForPolicy"

    return-object v0

    .line 1544
    :pswitch_97
    const-string v0, "addMixForPolicy"

    return-object v0

    .line 1540
    :pswitch_98
    const-string v0, "unregisterAudioPolicy"

    return-object v0

    .line 1536
    :pswitch_99
    const-string v0, "getRegisteredPolicyMixes"

    return-object v0

    .line 1532
    :pswitch_9a
    const-string v0, "unregisterAudioPolicyAsync"

    return-object v0

    .line 1528
    :pswitch_9b
    const-string v0, "registerAudioPolicy"

    return-object v0

    .line 1524
    :pswitch_9c
    const-string v0, "isHdmiSystemAudioSupported"

    return-object v0

    .line 1520
    :pswitch_9d
    const-string v0, "setHdmiSystemAudioSupported"

    return-object v0

    .line 1516
    :pswitch_9e
    const-string v0, "isBluetoothAudioDeviceCategoryFixed"

    return-object v0

    .line 1512
    :pswitch_9f
    const-string v0, "getBluetoothAudioDeviceCategory"

    return-object v0

    .line 1508
    :pswitch_a0
    const-string v0, "setBluetoothAudioDeviceCategory"

    return-object v0

    .line 1504
    :pswitch_a1
    const-string v0, "setCsdAsAFeatureEnabled"

    return-object v0

    .line 1500
    :pswitch_a2
    const-string v0, "isCsdAsAFeatureEnabled"

    return-object v0

    .line 1496
    :pswitch_a3
    const-string v0, "isCsdAsAFeatureAvailable"

    return-object v0

    .line 1492
    :pswitch_a4
    const-string v0, "isCsdEnabled"

    return-object v0

    .line 1488
    :pswitch_a5
    const-string v0, "forceComputeCsdOnAllDevices"

    return-object v0

    .line 1484
    :pswitch_a6
    const-string v0, "forceUseFrameworkMel"

    return-object v0

    .line 1480
    :pswitch_a7
    const-string v0, "setCsd"

    return-object v0

    .line 1476
    :pswitch_a8
    const-string v0, "getCsd"

    return-object v0

    .line 1472
    :pswitch_a9
    const-string v0, "setOutputRs2UpperBound"

    return-object v0

    .line 1468
    :pswitch_aa
    const-string v0, "getOutputRs2UpperBound"

    return-object v0

    .line 1464
    :pswitch_ab
    const-string v0, "lowerVolumeToRs1"

    return-object v0

    .line 1460
    :pswitch_ac
    const-string v0, "disableSafeMediaVolume"

    return-object v0

    .line 1456
    :pswitch_ad
    const-string v0, "isStreamMutableByUi"

    return-object v0

    .line 1452
    :pswitch_ae
    const-string v0, "isStreamAffectedByMute"

    return-object v0

    .line 1448
    :pswitch_af
    const-string v0, "isStreamAffectedByRingerMode"

    return-object v0

    .line 1444
    :pswitch_b0
    const-string v0, "setVolumeControllerLongPressTimeoutEnabled"

    return-object v0

    .line 1440
    :pswitch_b1
    const-string v0, "notifyVolumeControllerVisible"

    return-object v0

    .line 1436
    :pswitch_b2
    const-string v0, "getVolumeController"

    return-object v0

    .line 1432
    :pswitch_b3
    const-string v0, "setVolumeController"

    return-object v0

    .line 1428
    :pswitch_b4
    const-string v0, "isCameraSoundForced"

    return-object v0

    .line 1424
    :pswitch_b5
    const-string v0, "startWatchingRoutes"

    return-object v0

    .line 1420
    :pswitch_b6
    const-string v0, "setWiredDeviceConnectionState"

    return-object v0

    .line 1416
    :pswitch_b7
    const-string v0, "setNotifAliasRingForTest"

    return-object v0

    .line 1412
    :pswitch_b8
    const-string v0, "registerStreamAliasingDispatcher"

    return-object v0

    .line 1408
    :pswitch_b9
    const-string v0, "isVolumeControlUsingVolumeGroups"

    return-object v0

    .line 1404
    :pswitch_ba
    const-string v0, "getStreamTypeAlias"

    return-object v0

    .line 1400
    :pswitch_bb
    const-string v0, "getIndependentStreamTypes"

    return-object v0

    .line 1396
    :pswitch_bc
    const-string v0, "getUiSoundsStreamType"

    return-object v0

    .line 1392
    :pswitch_bd
    const-string v0, "getRingtonePlayer"

    return-object v0

    .line 1388
    :pswitch_be
    const-string v0, "setRingtonePlayer"

    return-object v0

    .line 1384
    :pswitch_bf
    const-string v0, "forceVolumeControlStream"

    return-object v0

    .line 1380
    :pswitch_c0
    const-string v0, "stopBluetoothSco"

    return-object v0

    .line 1376
    :pswitch_c1
    const-string v0, "startBluetoothScoVirtualCall"

    return-object v0

    .line 1372
    :pswitch_c2
    const-string v0, "startBluetoothSco"

    return-object v0

    .line 1368
    :pswitch_c3
    const-string v0, "getCurrentAudioFocus"

    return-object v0

    .line 1364
    :pswitch_c4
    const-string v0, "unregisterAudioFocusClient"

    return-object v0

    .line 1360
    :pswitch_c5
    const-string v0, "abandonAudioFocus"

    return-object v0

    .line 1356
    :pswitch_c6
    const-string v0, "requestAudioFocus"

    return-object v0

    .line 1352
    :pswitch_c7
    const-string v0, "isBluetoothA2dpOn"

    return-object v0

    .line 1348
    :pswitch_c8
    const-string v0, "setBluetoothA2dpOn"

    return-object v0

    .line 1344
    :pswitch_c9
    const-string v0, "isBluetoothScoOn"

    return-object v0

    .line 1340
    :pswitch_ca
    const-string v0, "setLeAudioSuspended"

    return-object v0

    .line 1336
    :pswitch_cb
    const-string v0, "setA2dpSuspended"

    return-object v0

    .line 1332
    :pswitch_cc
    const-string v0, "setBluetoothScoOn"

    return-object v0

    .line 1328
    :pswitch_cd
    const-string v0, "isSpeakerphoneOn"

    return-object v0

    .line 1324
    :pswitch_ce
    const-string v0, "setSpeakerphoneOn"

    return-object v0

    .line 1320
    :pswitch_cf
    const-string v0, "getEncodedSurroundMode"

    return-object v0

    .line 1316
    :pswitch_d0
    const-string v0, "setEncodedSurroundMode"

    return-object v0

    .line 1312
    :pswitch_d1
    const-string v0, "isSurroundFormatEnabled"

    return-object v0

    .line 1308
    :pswitch_d2
    const-string v0, "setSurroundFormatEnabled"

    return-object v0

    .line 1304
    :pswitch_d3
    const-string v0, "getReportedSurroundFormats"

    return-object v0

    .line 1300
    :pswitch_d4
    const-string v0, "getSurroundFormats"

    return-object v0

    .line 1296
    :pswitch_d5
    const-string v0, "reloadAudioSettings"

    return-object v0

    .line 1292
    :pswitch_d6
    const-string v0, "unloadSoundEffects"

    return-object v0

    .line 1288
    :pswitch_d7
    const-string v0, "loadSoundEffects"

    return-object v0

    .line 1284
    :pswitch_d8
    const-string v0, "playSoundEffectVolume"

    return-object v0

    .line 1280
    :pswitch_d9
    const-string v0, "playSoundEffect"

    return-object v0

    .line 1276
    :pswitch_da
    const-string v0, "getMode"

    return-object v0

    .line 1272
    :pswitch_db
    const-string v0, "setMode"

    return-object v0

    .line 1268
    :pswitch_dc
    const-string v0, "shouldVibrate"

    return-object v0

    .line 1264
    :pswitch_dd
    const-string v0, "getVibrateSetting"

    return-object v0

    .line 1260
    :pswitch_de
    const-string v0, "setVibrateSetting"

    return-object v0

    .line 1256
    :pswitch_df
    const-string v0, "isValidRingerMode"

    return-object v0

    .line 1252
    :pswitch_e0
    const-string v0, "getRingerModeInternal"

    return-object v0

    .line 1248
    :pswitch_e1
    const-string v0, "getRingerModeExternal"

    return-object v0

    .line 1244
    :pswitch_e2
    const-string v0, "setRingerModeInternal"

    return-object v0

    .line 1240
    :pswitch_e3
    const-string v0, "setRingerModeExternal"

    return-object v0

    .line 1236
    :pswitch_e4
    const-string v0, "setMicrophoneMuteFromSwitch"

    return-object v0

    .line 1232
    :pswitch_e5
    const-string v0, "isInputGainFixed"

    return-object v0

    .line 1228
    :pswitch_e6
    const-string v0, "getMinInputGainIndex"

    return-object v0

    .line 1224
    :pswitch_e7
    const-string v0, "getMaxInputGainIndex"

    return-object v0

    .line 1220
    :pswitch_e8
    const-string v0, "getInputGainIndex"

    return-object v0

    .line 1216
    :pswitch_e9
    const-string v0, "setInputGainIndex"

    return-object v0

    .line 1212
    :pswitch_ea
    const-string v0, "setMicrophoneMute"

    return-object v0

    .line 1208
    :pswitch_eb
    const-string v0, "isHotwordStreamSupported"

    return-object v0

    .line 1204
    :pswitch_ec
    const-string v0, "isUltrasoundSupported"

    return-object v0

    .line 1200
    :pswitch_ed
    const-string v0, "isMicrophoneMuted"

    return-object v0

    .line 1196
    :pswitch_ee
    const-string v0, "getAudioProductStrategies"

    return-object v0

    .line 1192
    :pswitch_ef
    const-string v0, "getSupportedSystemUsages"

    return-object v0

    .line 1188
    :pswitch_f0
    const-string v0, "setSupportedSystemUsages"

    return-object v0

    .line 1184
    :pswitch_f1
    const-string v0, "getLastAudibleStreamVolume"

    return-object v0

    .line 1180
    :pswitch_f2
    const-string v0, "adjustVolumeGroupVolume"

    return-object v0

    .line 1176
    :pswitch_f3
    const-string v0, "isVolumeGroupMuted"

    return-object v0

    .line 1172
    :pswitch_f4
    const-string v0, "getLastAudibleVolumeForVolumeGroup"

    return-object v0

    .line 1168
    :pswitch_f5
    const-string v0, "getVolumeGroupMinVolumeIndex"

    return-object v0

    .line 1164
    :pswitch_f6
    const-string v0, "getVolumeGroupMaxVolumeIndex"

    return-object v0

    .line 1160
    :pswitch_f7
    const-string v0, "getVolumeGroupVolumeIndex"

    return-object v0

    .line 1156
    :pswitch_f8
    const-string v0, "setVolumeGroupVolumeIndex"

    return-object v0

    .line 1152
    :pswitch_f9
    const-string v0, "getAudioVolumeGroups"

    return-object v0

    .line 1148
    :pswitch_fa
    const-string v0, "getStreamMaxVolume"

    return-object v0

    .line 1144
    :pswitch_fb
    const-string v0, "getStreamMinVolume"

    return-object v0

    .line 1140
    :pswitch_fc
    const-string v0, "getStreamVolume"

    return-object v0

    .line 1136
    :pswitch_fd
    const-string v0, "setMasterMute"

    return-object v0

    .line 1132
    :pswitch_fe
    const-string v0, "isMasterMute"

    return-object v0

    .line 1128
    :pswitch_ff
    const-string v0, "forceRemoteSubmixFullVolume"

    return-object v0

    .line 1124
    :pswitch_100
    const-string v0, "isStreamMute"

    return-object v0

    .line 1120
    :pswitch_101
    const-string v0, "handleVolumeKey"

    return-object v0

    .line 1116
    :pswitch_102
    const-string v0, "getDeviceVolume"

    return-object v0

    .line 1112
    :pswitch_103
    const-string v0, "setDeviceVolume"

    return-object v0

    .line 1108
    :pswitch_104
    const-string v0, "setStreamVolumeWithAttribution"

    return-object v0

    .line 1104
    :pswitch_105
    const-string v0, "setStreamVolume"

    return-object v0

    .line 1100
    :pswitch_106
    const-string v0, "adjustStreamVolumeWithAttribution"

    return-object v0

    .line 1096
    :pswitch_107
    const-string v0, "adjustStreamVolume"

    return-object v0

    .line 1092
    :pswitch_108
    const-string v0, "permissionUpdateBarrier"

    return-object v0

    .line 1088
    :pswitch_109
    const-string v0, "portEvent"

    return-object v0

    .line 1084
    :pswitch_10a
    const-string v0, "playerSessionId"

    return-object v0

    .line 1080
    :pswitch_10b
    const-string v0, "releaseRecorder"

    return-object v0

    .line 1076
    :pswitch_10c
    const-string v0, "recorderEvent"

    return-object v0

    .line 1072
    :pswitch_10d
    const-string v0, "trackRecorder"

    return-object v0

    .line 1068
    :pswitch_10e
    const-string v0, "releasePlayer"

    return-object v0

    .line 1064
    :pswitch_10f
    const-string v0, "playerEvent"

    return-object v0

    .line 1060
    :pswitch_110
    const-string v0, "playerAttributes"

    return-object v0

    .line 1056
    :pswitch_111
    const-string v0, "trackPlayer"

    return-object v0

    .line 1052
    :pswitch_112
    const-string v0, "getNativeInterface"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addAssistantServicesUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10105
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10106
    return-void
.end method

.method protected blacklist addOnDevicesForAttributesChangedListener_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9853
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_addOnDevicesForAttributesChangedListener:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9854
    return-void
.end method

.method protected blacklist addSpatializerCompatibleAudioDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10004
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10005
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1043
    return-object p0
.end method

.method protected blacklist clearFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10163
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10164
    return-void
.end method

.method protected blacklist clearPreferredDevicesForCapturePreset_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9884
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9885
    return-void
.end method

.method protected blacklist dispatchFocusChangeWithFade_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9799
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9800
    return-void
.end method

.method protected blacklist enterAudioFocusFreezeForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9933
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9934
    return-void
.end method

.method protected blacklist exitAudioFocusFreezeForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9938
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9939
    return-void
.end method

.method protected blacklist forceComputeCsdOnAllDevices_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9734
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9735
    return-void
.end method

.method protected blacklist forceUseFrameworkMel_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9729
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9730
    return-void
.end method

.method protected blacklist getActiveAssistantServiceUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10125
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10126
    return-void
.end method

.method protected blacklist getActualHeadTrackingMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10029
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10030
    return-void
.end method

.method protected blacklist getAssistantServicesUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10120
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10121
    return-void
.end method

.method protected blacklist getAudioProductStrategies_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9565
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9566
    return-void
.end method

.method protected blacklist getAudioVolumeGroups_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9514
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getAudioVolumeGroups:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9515
    return-void
.end method

.method protected blacklist getBluetoothAudioDeviceCategory_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9764
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9765
    return-void
.end method

.method protected blacklist getCsd_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9719
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9720
    return-void
.end method

.method protected blacklist getDesiredHeadTrackingMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10019
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10020
    return-void
.end method

.method protected blacklist getDeviceVolumeBehavior_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9873
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9874
    return-void
.end method

.method protected blacklist getDeviceVolume_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9496
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9497
    return-void
.end method

.method protected blacklist getFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10168
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10169
    return-void
.end method

.method protected blacklist getFocusDuckedUidsForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9918
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9919
    return-void
.end method

.method protected blacklist getFocusFadeOutDurationForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9923
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9924
    return-void
.end method

.method protected blacklist getFocusStack_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10090
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10091
    return-void
.end method

.method protected blacklist getFocusUnmuteDelayAfterFadeOutForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9928
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9929
    return-void
.end method

.method protected blacklist getIndependentStreamTypes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9664
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9665
    return-void
.end method

.method protected blacklist getInputGainIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9587
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9588
    return-void
.end method

.method protected blacklist getLastAudibleStreamVolume_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9550
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9551
    return-void
.end method

.method protected blacklist getLastAudibleVolumeForVolumeGroup_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9543
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9544
    return-void
.end method

.method protected blacklist getMaxInputGainIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9592
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9593
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 10183
    const/16 v0, 0x112

    return v0
.end method

.method protected blacklist getMinInputGainIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9597
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9598
    return-void
.end method

.method protected blacklist getMutingExpectedDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10078
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10079
    return-void
.end method

.method protected blacklist getNonDefaultDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9845
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9846
    return-void
.end method

.method protected blacklist getOutputRs2UpperBound_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9709
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9710
    return-void
.end method

.method protected blacklist getPreferredDevicesForCapturePreset_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9889
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9890
    return-void
.end method

.method protected blacklist getPreferredDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9830
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9831
    return-void
.end method

.method protected blacklist getSpatializerCompatibleAudioDevices_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9999
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10000
    return-void
.end method

.method protected blacklist getSpatializerOutput_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10054
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10055
    return-void
.end method

.method protected blacklist getSpatializerParameter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10049
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10050
    return-void
.end method

.method protected blacklist getStreamTypeAlias_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9669
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9670
    return-void
.end method

.method protected blacklist getSupportedHeadTrackingModes_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10024
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10025
    return-void
.end method

.method protected blacklist getSupportedSystemUsages_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9560
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9561
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 2159
    invoke-static {p1}, Landroid/media/IAudioService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getVolumeGroupMaxVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9532
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMaxVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9533
    return-void
.end method

.method protected blacklist getVolumeGroupMinVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9538
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupMinVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9539
    return-void
.end method

.method protected blacklist getVolumeGroupVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9526
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_getVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9527
    return-void
.end method

.method protected blacklist handleBluetoothActiveDeviceChanged_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9805
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9806
    return-void
.end method

.method protected blacklist hasHeadTracker_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9953
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9954
    return-void
.end method

.method protected blacklist isBluetoothAudioDeviceCategoryFixed_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9769
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9770
    return-void
.end method

.method protected blacklist isBluetoothVariableLatencyEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10146
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10147
    return-void
.end method

.method protected blacklist isCsdAsAFeatureAvailable_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9744
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9745
    return-void
.end method

.method protected blacklist isCsdAsAFeatureEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9749
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9750
    return-void
.end method

.method protected blacklist isCsdEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9739
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9740
    return-void
.end method

.method protected blacklist isHeadTrackerEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9963
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9964
    return-void
.end method

.method protected blacklist isHotwordStreamSupported_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9576
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9577
    return-void
.end method

.method protected blacklist isInputGainFixed_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9602
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9603
    return-void
.end method

.method protected blacklist isPstnCallAudioInterceptable_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10071
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CALL_AUDIO_INTERCEPTION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10072
    return-void
.end method

.method protected blacklist isSpatializerAvailableForDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9948
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9949
    return-void
.end method

.method protected blacklist isUltrasoundSupported_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9571
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_ULTRASOUND"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9572
    return-void
.end method

.method protected blacklist isVolumeControlUsingVolumeGroups_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9674
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9675
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2163
    move-object/from16 v0, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "android.media.IAudioService"

    .line 2164
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v1, 0xffffff

    if-gt v11, v1, :cond_0

    .line 2165
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2167
    :cond_0
    const v1, 0x5f4e5446

    if-ne v11, v1, :cond_1

    .line 2168
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2169
    return v15

    .line 2171
    :cond_1
    packed-switch v11, :pswitch_data_0

    .line 4893
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 4885
    :pswitch_0
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4886
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4887
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setEnableHardening(Z)V

    .line 4888
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4889
    goto/16 :goto_0

    .line 4875
    .end local v1    # "_arg0":Z
    :pswitch_1
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4876
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4877
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->shouldNotificationSoundPlay(Landroid/media/AudioAttributes;)Z

    move-result v2

    .line 4878
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4879
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4880
    goto/16 :goto_0

    .line 4867
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;

    move-result-object v1

    .line 4868
    .local v1, "_result":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4869
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4870
    goto/16 :goto_0

    .line 4860
    .end local v1    # "_result":Landroid/media/FadeManagerConfiguration;
    :pswitch_3
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->clearFadeManagerConfigurationForFocusLoss()I

    move-result v1

    .line 4861
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4862
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4863
    goto/16 :goto_0

    .line 4851
    .end local v1    # "_result":I
    :pswitch_4
    sget-object v1, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/FadeManagerConfiguration;

    .line 4852
    .local v1, "_arg0":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4853
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I

    move-result v2

    .line 4854
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4855
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4856
    goto/16 :goto_0

    .line 4841
    .end local v1    # "_arg0":Landroid/media/FadeManagerConfiguration;
    .end local v2    # "_result":I
    :pswitch_5
    sget-object v1, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/LoudnessCodecInfo;

    .line 4842
    .local v1, "_arg0":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4843
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getLoudnessParams(Landroid/media/LoudnessCodecInfo;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 4844
    .local v2, "_result":Landroid/os/PersistableBundle;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4845
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4846
    goto/16 :goto_0

    .line 4830
    .end local v1    # "_arg0":Landroid/media/LoudnessCodecInfo;
    .end local v2    # "_result":Landroid/os/PersistableBundle;
    :pswitch_6
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4832
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/LoudnessCodecInfo;

    .line 4833
    .local v2, "_arg1":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4834
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->removeLoudnessCodecInfo(ILandroid/media/LoudnessCodecInfo;)V

    .line 4835
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4836
    goto/16 :goto_0

    .line 4817
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/LoudnessCodecInfo;
    :pswitch_7
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4819
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4821
    .local v2, "_arg1":I
    sget-object v3, Landroid/media/LoudnessCodecInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/LoudnessCodecInfo;

    .line 4822
    .local v3, "_arg2":Landroid/media/LoudnessCodecInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4823
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->addLoudnessCodecInfo(IILandroid/media/LoudnessCodecInfo;)V

    .line 4824
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4825
    goto/16 :goto_0

    .line 4808
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/LoudnessCodecInfo;
    :pswitch_8
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4809
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4810
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->stopLoudnessCodecUpdates(I)V

    .line 4811
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4812
    goto/16 :goto_0

    .line 4799
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4800
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4801
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startLoudnessCodecUpdates(I)V

    .line 4802
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4803
    goto/16 :goto_0

    .line 4790
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v1

    .line 4791
    .local v1, "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4792
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    .line 4793
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4794
    goto/16 :goto_0

    .line 4781
    .end local v1    # "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    :pswitch_b
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ILoudnessCodecUpdatesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ILoudnessCodecUpdatesDispatcher;

    move-result-object v1

    .line 4782
    .restart local v1    # "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4783
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerLoudnessCodecUpdatesDispatcher(Landroid/media/ILoudnessCodecUpdatesDispatcher;)V

    .line 4784
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4785
    goto/16 :goto_0

    .line 4773
    .end local v1    # "_arg0":Landroid/media/ILoudnessCodecUpdatesDispatcher;
    :pswitch_c
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isBluetoothVariableLatencyEnabled()Z

    move-result v1

    .line 4774
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4775
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4776
    goto/16 :goto_0

    .line 4765
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4766
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4767
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothVariableLatencyEnabled(Z)V

    .line 4768
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4769
    goto/16 :goto_0

    .line 4757
    .end local v1    # "_arg0":Z
    :pswitch_e
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->supportsBluetoothVariableLatency()Z

    move-result v1

    .line 4758
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4759
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4760
    goto/16 :goto_0

    .line 4750
    .end local v1    # "_result":Z
    :pswitch_f
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v1

    .line 4751
    .local v1, "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4752
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4753
    goto/16 :goto_0

    .line 4741
    .end local v1    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    :pswitch_10
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPreferredMixerAttributesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPreferredMixerAttributesDispatcher;

    move-result-object v1

    .line 4742
    .restart local v1    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4743
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerPreferredMixerAttributesDispatcher(Landroid/media/IPreferredMixerAttributesDispatcher;)V

    .line 4744
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4745
    goto/16 :goto_0

    .line 4729
    .end local v1    # "_arg0":Landroid/media/IPreferredMixerAttributesDispatcher;
    :pswitch_11
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4731
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4732
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4733
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->clearPreferredMixerAttributes(Landroid/media/AudioAttributes;I)I

    move-result v3

    .line 4734
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4735
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4736
    goto/16 :goto_0

    .line 4715
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_12
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4717
    .restart local v1    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4719
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/media/AudioMixerAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioMixerAttributes;

    .line 4720
    .local v3, "_arg2":Landroid/media/AudioMixerAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4721
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setPreferredMixerAttributes(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)I

    move-result v4

    .line 4722
    .local v4, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4723
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4724
    goto/16 :goto_0

    .line 4707
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/AudioMixerAttributes;
    .end local v4    # "_result":I
    :pswitch_13
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getHalVersion()Landroid/media/AudioHalVersionInfo;

    move-result-object v1

    .line 4708
    .local v1, "_result":Landroid/media/AudioHalVersionInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4709
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4710
    goto/16 :goto_0

    .line 4687
    .end local v1    # "_result":Landroid/media/AudioHalVersionInfo;
    :pswitch_14
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4689
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioDeviceVolumeDispatcher;

    move-result-object v2

    .line 4691
    .local v2, "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4693
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    .line 4695
    .local v4, "_arg3":Landroid/media/AudioDeviceAttributes;
    sget-object v5, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4697
    .local v5, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4699
    .local v6, "_arg5":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4700
    .local v7, "_arg6":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4701
    invoke-virtual/range {v0 .. v7}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;ZI)V

    .line 4702
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4703
    goto/16 :goto_0

    .line 4679
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/media/IAudioDeviceVolumeDispatcher;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/media/AudioDeviceAttributes;
    .end local v5    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":I
    :pswitch_15
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getActiveAssistantServiceUids()[I

    move-result-object v1

    .line 4680
    .local v1, "_result":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4681
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4682
    goto/16 :goto_0

    .line 4672
    .end local v1    # "_result":[I
    :pswitch_16
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getAssistantServicesUids()[I

    move-result-object v1

    .line 4673
    .restart local v1    # "_result":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4674
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4675
    goto/16 :goto_0

    .line 4664
    .end local v1    # "_result":[I
    :pswitch_17
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4665
    .local v1, "_arg0":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4666
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setActiveAssistantServiceUids([I)V

    .line 4667
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4668
    goto/16 :goto_0

    .line 4655
    .end local v1    # "_arg0":[I
    :pswitch_18
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4656
    .restart local v1    # "_arg0":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4657
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->removeAssistantServicesUids([I)V

    .line 4658
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4659
    goto/16 :goto_0

    .line 4646
    .end local v1    # "_arg0":[I
    :pswitch_19
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4647
    .restart local v1    # "_arg0":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4648
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->addAssistantServicesUids([I)V

    .line 4649
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4650
    goto/16 :goto_0

    .line 4634
    .end local v1    # "_arg0":[I
    :pswitch_1a
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 4636
    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 4637
    .local v2, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4638
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v3

    .line 4639
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4640
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4641
    goto/16 :goto_0

    .line 4624
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":Z
    :pswitch_1b
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 4626
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 4627
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4628
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 4629
    goto/16 :goto_0

    .line 4616
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_1c
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getFocusStack()Ljava/util/List;

    move-result-object v1

    .line 4617
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4618
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4619
    goto/16 :goto_0

    .line 4606
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    :pswitch_1d
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4608
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDeviceVolumeBehaviorDispatcher;

    move-result-object v2

    .line 4609
    .local v2, "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4610
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V

    .line 4611
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4612
    goto/16 :goto_0

    .line 4595
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/media/IDeviceVolumeBehaviorDispatcher;
    :pswitch_1e
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4597
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4598
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4599
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V

    .line 4600
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4601
    goto/16 :goto_0

    .line 4584
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":Z
    :pswitch_1f
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IMuteAwaitConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMuteAwaitConnectionCallback;

    move-result-object v1

    .line 4586
    .local v1, "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4587
    .restart local v2    # "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4588
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V

    .line 4589
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4590
    goto/16 :goto_0

    .line 4576
    .end local v1    # "_arg0":Landroid/media/IMuteAwaitConnectionCallback;
    .end local v2    # "_arg1":Z
    :pswitch_20
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    .line 4577
    .local v1, "_result":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4578
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4579
    goto/16 :goto_0

    .line 4569
    .end local v1    # "_result":Landroid/media/AudioDeviceAttributes;
    :pswitch_21
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4570
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4571
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V

    .line 4572
    goto/16 :goto_0

    .line 4557
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_22
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4559
    .local v1, "_arg0":[I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 4561
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4562
    .local v3, "_arg2":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4563
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V

    .line 4564
    goto/16 :goto_0

    .line 4549
    .end local v1    # "_arg0":[I
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_arg2":J
    :pswitch_23
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isPstnCallAudioInterceptable()Z

    move-result v1

    .line 4550
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4551
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4552
    goto/16 :goto_0

    .line 4542
    .end local v1    # "_result":Z
    :pswitch_24
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getDefaultVolumeInfo()Landroid/media/VolumeInfo;

    move-result-object v1

    .line 4543
    .local v1, "_result":Landroid/media/VolumeInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4544
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4545
    goto/16 :goto_0

    .line 4535
    .end local v1    # "_result":Landroid/media/VolumeInfo;
    :pswitch_25
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isVolumeFixed()Z

    move-result v1

    .line 4536
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4537
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4538
    goto/16 :goto_0

    .line 4527
    .end local v1    # "_result":Z
    :pswitch_26
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v1

    .line 4528
    .local v1, "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4529
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4530
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4531
    goto/16 :goto_0

    .line 4518
    .end local v1    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_27
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerOutputCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerOutputCallback;

    move-result-object v1

    .line 4519
    .restart local v1    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4520
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 4521
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4522
    goto/16 :goto_0

    .line 4510
    .end local v1    # "_arg0":Landroid/media/ISpatializerOutputCallback;
    :pswitch_28
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getSpatializerOutput()I

    move-result v1

    .line 4511
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4512
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4513
    goto/16 :goto_0

    .line 4499
    .end local v1    # "_result":I
    :pswitch_29
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4501
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4502
    .local v2, "_arg1":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4503
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->getSpatializerParameter(I[B)V

    .line 4504
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4505
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4506
    goto/16 :goto_0

    .line 4488
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_2a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4490
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4491
    .restart local v2    # "_arg1":[B
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4492
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setSpatializerParameter(I[B)V

    .line 4493
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4494
    goto/16 :goto_0

    .line 4482
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[B
    :pswitch_2b
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->recenterHeadTracker()V

    .line 4483
    goto/16 :goto_0

    .line 4475
    :pswitch_2c
    invoke-virtual {v12}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 4476
    .local v1, "_arg0":[F
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4477
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerGlobalTransform([F)V

    .line 4478
    goto/16 :goto_0

    .line 4467
    .end local v1    # "_arg0":[F
    :pswitch_2d
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getActualHeadTrackingMode()I

    move-result v1

    .line 4468
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4469
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4470
    goto/16 :goto_0

    .line 4460
    .end local v1    # "_result":I
    :pswitch_2e
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getSupportedHeadTrackingModes()[I

    move-result-object v1

    .line 4461
    .local v1, "_result":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4462
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4463
    goto/16 :goto_0

    .line 4453
    .end local v1    # "_result":[I
    :pswitch_2f
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getDesiredHeadTrackingMode()I

    move-result v1

    .line 4454
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4455
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4456
    goto/16 :goto_0

    .line 4445
    .end local v1    # "_result":I
    :pswitch_30
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4446
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4447
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setDesiredHeadTrackingMode(I)V

    .line 4448
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4449
    goto/16 :goto_0

    .line 4436
    .end local v1    # "_arg0":I
    :pswitch_31
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4437
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4438
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4439
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4440
    goto/16 :goto_0

    .line 4427
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_32
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4428
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4429
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V

    .line 4430
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4431
    goto/16 :goto_0

    .line 4419
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    :pswitch_33
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v1

    .line 4420
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4421
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4422
    goto/16 :goto_0

    .line 4411
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_34
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v1

    .line 4412
    .local v1, "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4413
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4414
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4415
    goto/16 :goto_0

    .line 4402
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_35
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    move-result-object v1

    .line 4403
    .restart local v1    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4404
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V

    .line 4405
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4406
    goto/16 :goto_0

    .line 4393
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    :pswitch_36
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v1

    .line 4394
    .local v1, "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4395
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4396
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4397
    goto/16 :goto_0

    .line 4384
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_37
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackingModeCallback;

    move-result-object v1

    .line 4385
    .restart local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4386
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    .line 4387
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4388
    goto/16 :goto_0

    .line 4375
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackingModeCallback;
    :pswitch_38
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v1

    .line 4376
    .local v1, "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4377
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4378
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4379
    goto/16 :goto_0

    .line 4366
    .end local v1    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_39
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerCallback;

    move-result-object v1

    .line 4367
    .restart local v1    # "_arg0":Landroid/media/ISpatializerCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4368
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    .line 4369
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4370
    goto/16 :goto_0

    .line 4358
    .end local v1    # "_arg0":Landroid/media/ISpatializerCallback;
    :pswitch_3a
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getSpatializedChannelMasks()Ljava/util/List;

    move-result-object v1

    .line 4359
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4360
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4361
    goto/16 :goto_0

    .line 4347
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_3b
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4349
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    sget-object v2, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFormat;

    .line 4350
    .local v2, "_arg1":Landroid/media/AudioFormat;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4351
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v3

    .line 4352
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4353
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4354
    goto/16 :goto_0

    .line 4338
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/AudioFormat;
    .end local v3    # "_result":Z
    :pswitch_3c
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4339
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4340
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpatializerEnabled(Z)V

    .line 4341
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4342
    goto/16 :goto_0

    .line 4327
    .end local v1    # "_arg0":Z
    :pswitch_3d
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializerHeadTrackerAvailableCallback;

    move-result-object v1

    .line 4329
    .local v1, "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4330
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4331
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V

    .line 4332
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4333
    goto/16 :goto_0

    .line 4319
    .end local v1    # "_arg0":Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .end local v2    # "_arg1":Z
    :pswitch_3e
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isHeadTrackerAvailable()Z

    move-result v1

    .line 4320
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4321
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4322
    goto/16 :goto_0

    .line 4310
    .end local v1    # "_result":Z
    :pswitch_3f
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4311
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4312
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 4313
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4314
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4315
    goto/16 :goto_0

    .line 4299
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_40
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4301
    .local v1, "_arg0":Z
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 4302
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4303
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V

    .line 4304
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4305
    goto/16 :goto_0

    .line 4289
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    :pswitch_41
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4290
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4291
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 4292
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4293
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4294
    goto/16 :goto_0

    .line 4279
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_42
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4280
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4281
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 4282
    .restart local v2    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4283
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4284
    goto/16 :goto_0

    .line 4271
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_43
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isSpatializerAvailable()Z

    move-result v1

    .line 4272
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4273
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4274
    goto/16 :goto_0

    .line 4264
    .end local v1    # "_result":Z
    :pswitch_44
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isSpatializerEnabled()Z

    move-result v1

    .line 4265
    .restart local v1    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4266
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4267
    goto/16 :goto_0

    .line 4257
    .end local v1    # "_result":Z
    :pswitch_45
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getSpatializerImmersiveAudioLevel()I

    move-result v1

    .line 4258
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4259
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4260
    goto/16 :goto_0

    .line 4250
    .end local v1    # "_result":I
    :pswitch_46
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v1

    .line 4251
    .local v1, "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4252
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 4253
    goto/16 :goto_0

    .line 4241
    .end local v1    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_47
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioModeDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioModeDispatcher;

    move-result-object v1

    .line 4242
    .restart local v1    # "_arg0":Landroid/media/IAudioModeDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4243
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    .line 4244
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4245
    goto/16 :goto_0

    .line 4231
    .end local v1    # "_arg0":Landroid/media/IAudioModeDispatcher;
    :pswitch_48
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4232
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4233
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->exitAudioFocusFreezeForTest(Landroid/os/IBinder;)Z

    move-result v2

    .line 4234
    .restart local v2    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4235
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4236
    goto/16 :goto_0

    .line 4219
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_49
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4221
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 4222
    .local v2, "_arg1":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4223
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->enterAudioFocusFreezeForTest(Landroid/os/IBinder;[I)Z

    move-result v3

    .line 4224
    .restart local v3    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4225
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4226
    goto/16 :goto_0

    .line 4211
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":[I
    .end local v3    # "_result":Z
    :pswitch_4a
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getFocusUnmuteDelayAfterFadeOutForTest()J

    move-result-wide v1

    .line 4212
    .local v1, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4213
    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4214
    goto/16 :goto_0

    .line 4204
    .end local v1    # "_result":J
    :pswitch_4b
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getFocusFadeOutDurationForTest()J

    move-result-wide v1

    .line 4205
    .restart local v1    # "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4206
    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 4207
    goto/16 :goto_0

    .line 4197
    .end local v1    # "_result":J
    :pswitch_4c
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getFocusDuckedUidsForTest()Ljava/util/List;

    move-result-object v1

    .line 4198
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4199
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4200
    goto/16 :goto_0

    .line 4188
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_4d
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4189
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4190
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J

    move-result-wide v2

    .line 4191
    .local v2, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4192
    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4193
    goto/16 :goto_0

    .line 4172
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":J
    :pswitch_4e
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 4174
    .local v1, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4176
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 4178
    .local v3, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4179
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4180
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v5

    .line 4181
    .local v5, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4182
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4183
    goto/16 :goto_0

    .line 4146
    .end local v1    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_4f
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 4148
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4150
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4152
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 4154
    .local v4, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4156
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4158
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4160
    .restart local v7    # "_arg6":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4162
    .local v8, "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4163
    .local v9, "_arg8":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4164
    invoke-virtual/range {v0 .. v9}, Landroid/media/IAudioService$Stub;->requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v10

    .line 4165
    .local v10, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4166
    invoke-virtual {v13, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4167
    goto/16 :goto_0

    .line 4136
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":I
    .end local v10    # "_result":I
    :pswitch_50
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4137
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4138
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v2

    .line 4139
    .local v2, "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4140
    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4141
    goto/16 :goto_0

    .line 4126
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":J
    :pswitch_51
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4127
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4128
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J

    move-result-wide v2

    .line 4129
    .restart local v2    # "_result":J
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4130
    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 4131
    goto/16 :goto_0

    .line 4114
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":J
    :pswitch_52
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 4116
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4117
    .local v2, "_arg1":J
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4118
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z

    move-result v4

    .line 4119
    .local v4, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4120
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4121
    goto/16 :goto_0

    .line 4106
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":J
    .end local v4    # "_result":Z
    :pswitch_53
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4107
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4108
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHomeSoundEffectEnabled(Z)V

    .line 4109
    goto/16 :goto_0

    .line 4098
    .end local v1    # "_arg0":Z
    :pswitch_54
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isHomeSoundEffectEnabled()Z

    move-result v1

    .line 4099
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4100
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4101
    goto/16 :goto_0

    .line 4091
    .end local v1    # "_result":Z
    :pswitch_55
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4092
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4093
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setNavigationRepeatSoundEffectsEnabled(Z)V

    .line 4094
    goto/16 :goto_0

    .line 4083
    .end local v1    # "_arg0":Z
    :pswitch_56
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->areNavigationRepeatSoundEffectsEnabled()Z

    move-result v1

    .line 4084
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4085
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4086
    goto/16 :goto_0

    .line 4076
    .end local v1    # "_result":Z
    :pswitch_57
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v1

    .line 4077
    .local v1, "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4078
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 4079
    goto/16 :goto_0

    .line 4067
    .end local v1    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_58
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICommunicationDeviceDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICommunicationDeviceDispatcher;

    move-result-object v1

    .line 4068
    .restart local v1    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4069
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    .line 4070
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4071
    goto/16 :goto_0

    .line 4059
    .end local v1    # "_arg0":Landroid/media/ICommunicationDeviceDispatcher;
    :pswitch_59
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getCommunicationDevice()I

    move-result v1

    .line 4060
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4061
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4062
    goto/16 :goto_0

    .line 4046
    .end local v1    # "_result":I
    :pswitch_5a
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4048
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4050
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 4051
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4052
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setCommunicationDevice(Landroid/os/IBinder;ILandroid/content/AttributionSource;)Z

    move-result v4

    .line 4053
    .restart local v4    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4054
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4055
    goto/16 :goto_0

    .line 4038
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    .end local v4    # "_result":Z
    :pswitch_5b
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getAvailableCommunicationDeviceIds()[I

    move-result-object v1

    .line 4039
    .local v1, "_result":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4040
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4041
    goto/16 :goto_0

    .line 4029
    .end local v1    # "_result":[I
    :pswitch_5c
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4030
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4031
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getDeviceMaskForStream(I)I

    move-result v2

    .line 4032
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4033
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4034
    goto/16 :goto_0

    .line 4019
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_5d
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4020
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4021
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isMusicActive(Z)Z

    move-result v2

    .line 4022
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4023
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4024
    goto/16 :goto_0

    .line 4007
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_5e
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4009
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4011
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4012
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4013
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 4014
    goto/16 :goto_0

    .line 3997
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :pswitch_5f
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3999
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4000
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4001
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 4002
    goto/16 :goto_0

    .line 3975
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_60
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3977
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3979
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3981
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3983
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3985
    .local v5, "_arg4":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3987
    .local v6, "_arg5":I
    sget-object v7, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 3989
    .local v7, "_arg6":Landroid/os/UserHandle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3990
    .restart local v8    # "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3991
    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3992
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 3953
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    .end local v8    # "_arg7":I
    :pswitch_61
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3955
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3957
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3959
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3961
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3963
    .restart local v5    # "_arg4":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3965
    .restart local v6    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserHandle;

    .line 3967
    .restart local v7    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3968
    .restart local v8    # "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3969
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3970
    goto/16 :goto_0

    .line 3931
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    .end local v8    # "_arg7":I
    :pswitch_62
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3933
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3935
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3937
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3939
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3941
    .restart local v5    # "_arg4":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3943
    .restart local v6    # "_arg5":I
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserHandle;

    .line 3945
    .restart local v7    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3946
    .restart local v8    # "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3947
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V

    .line 3948
    goto/16 :goto_0

    .line 3923
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    .end local v8    # "_arg7":I
    :pswitch_63
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v1

    .line 3924
    .local v1, "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3925
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3926
    goto/16 :goto_0

    .line 3914
    .end local v1    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_64
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ICapturePresetDevicesRoleDispatcher;

    move-result-object v1

    .line 3915
    .restart local v1    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3916
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V

    .line 3917
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3918
    goto/16 :goto_0

    .line 3904
    .end local v1    # "_arg0":Landroid/media/ICapturePresetDevicesRoleDispatcher;
    :pswitch_65
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3905
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3906
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForCapturePreset(I)Ljava/util/List;

    move-result-object v2

    .line 3907
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3908
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3909
    goto/16 :goto_0

    .line 3894
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_66
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3895
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3896
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->clearPreferredDevicesForCapturePreset(I)I

    move-result v2

    .line 3897
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3898
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3899
    goto/16 :goto_0

    .line 3882
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_67
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3884
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3885
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3886
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForCapturePreset(ILjava/util/List;)I

    move-result v3

    .line 3887
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3888
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3889
    goto/16 :goto_0

    .line 3874
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v3    # "_result":I
    :pswitch_68
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3875
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3876
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setMultiAudioFocusEnabled(Z)V

    .line 3877
    goto/16 :goto_0

    .line 3864
    .end local v1    # "_arg0":Z
    :pswitch_69
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3865
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3866
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 3867
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3868
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3869
    goto/16 :goto_0

    .line 3851
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":I
    :pswitch_6a
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3853
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3855
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3856
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3857
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3858
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3859
    goto/16 :goto_0

    .line 3843
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_6b
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3844
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3845
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRttEnabled(Z)V

    .line 3846
    goto/16 :goto_0

    .line 3835
    .end local v1    # "_arg0":Z
    :pswitch_6c
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v1

    .line 3836
    .local v1, "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3837
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3838
    goto/16 :goto_0

    .line 3826
    .end local v1    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    :pswitch_6d
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyNonDefaultDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyNonDefaultDevicesDispatcher;

    move-result-object v1

    .line 3827
    .restart local v1    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3828
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerStrategyNonDefaultDevicesDispatcher(Landroid/media/IStrategyNonDefaultDevicesDispatcher;)V

    .line 3829
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3830
    goto/16 :goto_0

    .line 3818
    .end local v1    # "_arg0":Landroid/media/IStrategyNonDefaultDevicesDispatcher;
    :pswitch_6e
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v1

    .line 3819
    .local v1, "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3820
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3821
    goto/16 :goto_0

    .line 3809
    .end local v1    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_6f
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStrategyPreferredDevicesDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStrategyPreferredDevicesDispatcher;

    move-result-object v1

    .line 3810
    .restart local v1    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3811
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V

    .line 3812
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3813
    goto/16 :goto_0

    .line 3801
    .end local v1    # "_arg0":Landroid/media/IStrategyPreferredDevicesDispatcher;
    :pswitch_70
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getAllowedCapturePolicy()I

    move-result v1

    .line 3802
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3803
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3804
    goto/16 :goto_0

    .line 3792
    .end local v1    # "_result":I
    :pswitch_71
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3793
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3794
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setAllowedCapturePolicy(I)I

    move-result v2

    .line 3795
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3796
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3797
    goto/16 :goto_0

    .line 3784
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_72
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v1

    .line 3785
    .local v1, "_arg0":Landroid/media/IDevicesForAttributesCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3786
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->removeOnDevicesForAttributesChangedListener(Landroid/media/IDevicesForAttributesCallback;)V

    .line 3787
    goto/16 :goto_0

    .line 3773
    .end local v1    # "_arg0":Landroid/media/IDevicesForAttributesCallback;
    :pswitch_73
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3775
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IDevicesForAttributesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IDevicesForAttributesCallback;

    move-result-object v2

    .line 3776
    .local v2, "_arg1":Landroid/media/IDevicesForAttributesCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3777
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->addOnDevicesForAttributesChangedListener(Landroid/media/AudioAttributes;Landroid/media/IDevicesForAttributesCallback;)V

    .line 3778
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3779
    goto/16 :goto_0

    .line 3763
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":Landroid/media/IDevicesForAttributesCallback;
    :pswitch_74
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3764
    .restart local v1    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3765
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v2

    .line 3766
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3767
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3768
    goto/16 :goto_0

    .line 3753
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_75
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 3754
    .restart local v1    # "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3755
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v2

    .line 3756
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3757
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3758
    goto/16 :goto_0

    .line 3743
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_76
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3744
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3745
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getNonDefaultDevicesForStrategy(I)Ljava/util/List;

    move-result-object v2

    .line 3746
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3747
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3748
    goto/16 :goto_0

    .line 3731
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_77
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3733
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 3734
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3735
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->removeDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v3

    .line 3736
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3737
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3738
    goto/16 :goto_0

    .line 3719
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_result":I
    :pswitch_78
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3721
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 3722
    .restart local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3723
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setDeviceAsNonDefaultForStrategy(ILandroid/media/AudioDeviceAttributes;)I

    move-result v3

    .line 3724
    .restart local v3    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3725
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3726
    goto/16 :goto_0

    .line 3709
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_result":I
    :pswitch_79
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3710
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3711
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getPreferredDevicesForStrategy(I)Ljava/util/List;

    move-result-object v2

    .line 3712
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3713
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3714
    goto/16 :goto_0

    .line 3699
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :pswitch_7a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3700
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3701
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->removePreferredDevicesForStrategy(I)I

    move-result v2

    .line 3702
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3703
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3704
    goto/16 :goto_0

    .line 3687
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_7b
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3689
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3690
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3691
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setPreferredDevicesForStrategy(ILjava/util/List;)I

    move-result v3

    .line 3692
    .restart local v3    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3693
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3694
    goto/16 :goto_0

    .line 3679
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    .end local v3    # "_result":I
    :pswitch_7c
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isCallScreeningModeSupported()Z

    move-result v1

    .line 3680
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3681
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3682
    goto/16 :goto_0

    .line 3670
    .end local v1    # "_result":Z
    :pswitch_7d
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 3671
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3672
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result v2

    .line 3673
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3674
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3675
    goto/16 :goto_0

    .line 3658
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_result":Z
    :pswitch_7e
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3660
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3661
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3662
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3

    .line 3663
    .restart local v3    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3664
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3665
    goto/16 :goto_0

    .line 3642
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_7f
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3644
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3646
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 3648
    .local v3, "_arg2":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 3649
    .local v4, "_arg3":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3650
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v5

    .line 3651
    .local v5, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3652
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3653
    goto/16 :goto_0

    .line 3630
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_80
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3632
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3633
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3634
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3

    .line 3635
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3636
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3637
    goto/16 :goto_0

    .line 3614
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":I
    :pswitch_81
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3616
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3618
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 3620
    .local v3, "_arg2":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 3621
    .restart local v4    # "_arg3":[Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3622
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v5

    .line 3623
    .restart local v5    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3624
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3625
    goto/16 :goto_0

    .line 3606
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_arg3":[Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_82
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isAudioServerRunning()Z

    move-result v1

    .line 3607
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3608
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3609
    goto/16 :goto_0

    .line 3599
    .end local v1    # "_result":Z
    :pswitch_83
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v1

    .line 3600
    .local v1, "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3601
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3602
    goto/16 :goto_0

    .line 3590
    .end local v1    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_84
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioServerStateDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServerStateDispatcher;

    move-result-object v1

    .line 3591
    .restart local v1    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3592
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V

    .line 3593
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3594
    goto/16 :goto_0

    .line 3578
    .end local v1    # "_arg0":Landroid/media/IAudioServerStateDispatcher;
    :pswitch_85
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3580
    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3582
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3583
    .local v3, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3584
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3585
    goto/16 :goto_0

    .line 3565
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_86
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 3567
    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 3569
    .local v2, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v3, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/BluetoothProfileConnectionInfo;

    .line 3570
    .local v3, "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3571
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V

    .line 3572
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3573
    goto/16 :goto_0

    .line 3555
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "_arg2":Landroid/media/BluetoothProfileConnectionInfo;
    :pswitch_87
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3557
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3558
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3559
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 3560
    goto/16 :goto_0

    .line 3537
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_88
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3539
    .local v1, "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3541
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3543
    .local v3, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    sget-object v4, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3545
    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    sget-object v5, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/FadeManagerConfiguration;

    .line 3546
    .local v5, "_arg4":Landroid/media/FadeManagerConfiguration;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3547
    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->dispatchFocusChangeWithFade(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;Ljava/util/List;Landroid/media/FadeManagerConfiguration;)I

    move-result v6

    .line 3548
    .local v6, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3549
    invoke-virtual {v13, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3550
    goto/16 :goto_0

    .line 3523
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v4    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    .end local v5    # "_arg4":Landroid/media/FadeManagerConfiguration;
    .end local v6    # "_result":I
    :pswitch_89
    sget-object v1, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 3525
    .restart local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3527
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3528
    .restart local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3529
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 3530
    .local v4, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3531
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    goto/16 :goto_0

    .line 3511
    .end local v1    # "_arg0":Landroid/media/AudioFocusInfo;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v4    # "_result":I
    :pswitch_8a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3513
    .local v1, "_arg0":I
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 3514
    .local v2, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3515
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v3

    .line 3516
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3517
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3518
    goto/16 :goto_0

    .line 3503
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioAttributes;
    .end local v3    # "_result":I
    :pswitch_8b
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v1

    .line 3504
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3505
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3506
    goto/16 :goto_0

    .line 3496
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :pswitch_8c
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v1

    .line 3497
    .local v1, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3498
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3499
    goto/16 :goto_0

    .line 3487
    .end local v1    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_8d
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v1

    .line 3488
    .restart local v1    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3489
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 3490
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3491
    goto/16 :goto_0

    .line 3479
    .end local v1    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :pswitch_8e
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v1

    .line 3480
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3481
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3482
    goto/16 :goto_0

    .line 3472
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :pswitch_8f
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v1

    .line 3473
    .local v1, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3474
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3475
    goto/16 :goto_0

    .line 3463
    .end local v1    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_90
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v1

    .line 3464
    .restart local v1    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3465
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 3466
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3467
    goto/16 :goto_0

    .line 3455
    .end local v1    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :pswitch_91
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->hasRegisteredDynamicPolicy()Z

    move-result v1

    .line 3456
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3457
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3458
    goto/16 :goto_0

    .line 3448
    .end local v1    # "_result":Z
    :pswitch_92
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getVolumePolicy()Landroid/media/VolumePolicy;

    move-result-object v1

    .line 3449
    .local v1, "_result":Landroid/media/VolumePolicy;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3450
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3451
    goto/16 :goto_0

    .line 3440
    .end local v1    # "_result":Landroid/media/VolumePolicy;
    :pswitch_93
    sget-object v1, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumePolicy;

    .line 3441
    .local v1, "_arg0":Landroid/media/VolumePolicy;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3442
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 3443
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3444
    goto/16 :goto_0

    .line 3428
    .end local v1    # "_arg0":Landroid/media/VolumePolicy;
    :pswitch_94
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3430
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3431
    .local v2, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3432
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 3433
    .restart local v3    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3434
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3435
    goto/16 :goto_0

    .line 3414
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_95
    sget-object v1, Landroid/media/audiopolicy/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/media/audiopolicy/AudioMix;

    .line 3416
    .local v1, "_arg0":[Landroid/media/audiopolicy/AudioMix;
    sget-object v2, Landroid/media/audiopolicy/AudioMixingRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audiopolicy/AudioMixingRule;

    .line 3418
    .local v2, "_arg1":[Landroid/media/audiopolicy/AudioMixingRule;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    .line 3419
    .local v3, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3420
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->updateMixingRulesForPolicy([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 3421
    .restart local v4    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3422
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3423
    goto/16 :goto_0

    .line 3402
    .end local v1    # "_arg0":[Landroid/media/audiopolicy/AudioMix;
    .end local v2    # "_arg1":[Landroid/media/audiopolicy/AudioMixingRule;
    .end local v3    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v4    # "_result":I
    :pswitch_96
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3404
    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3405
    .local v2, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3406
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 3407
    .local v3, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3408
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3409
    goto/16 :goto_0

    .line 3390
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_97
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3392
    .restart local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3393
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3394
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v3

    .line 3395
    .restart local v3    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3396
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3397
    goto/16 :goto_0

    .line 3381
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_result":I
    :pswitch_98
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3382
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3383
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3384
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3385
    goto/16 :goto_0

    .line 3373
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_99
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v1

    .line 3374
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3376
    goto/16 :goto_0

    .line 3366
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :pswitch_9a
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    .line 3367
    .local v1, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3368
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 3369
    goto/16 :goto_0

    .line 3342
    .end local v1    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :pswitch_9b
    sget-object v1, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 3344
    .local v1, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 3346
    .restart local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3348
    .local v3, "_arg2":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3350
    .local v4, "_arg3":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3352
    .local v5, "_arg4":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 3354
    .local v6, "_arg5":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v7

    .line 3356
    .local v7, "_arg6":Landroid/media/projection/IMediaProjection;
    sget-object v8, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/AttributionSource;

    .line 3357
    .local v8, "_arg7":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3358
    invoke-virtual/range {v0 .. v8}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v9

    .line 3359
    .local v9, "_result":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3360
    invoke-virtual {v13, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3361
    goto/16 :goto_0

    .line 3334
    .end local v1    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v2    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v3    # "_arg2":Z
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Landroid/media/projection/IMediaProjection;
    .end local v8    # "_arg7":Landroid/content/AttributionSource;
    .end local v9    # "_result":Ljava/lang/String;
    :pswitch_9c
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v1

    .line 3335
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3336
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3337
    goto/16 :goto_0

    .line 3325
    .end local v1    # "_result":Z
    :pswitch_9d
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3326
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3327
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v2

    .line 3328
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3329
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3330
    goto/16 :goto_0

    .line 3315
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":I
    :pswitch_9e
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3316
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isBluetoothAudioDeviceCategoryFixed(Ljava/lang/String;)Z

    move-result v2

    .line 3318
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3320
    goto/16 :goto_0

    .line 3305
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_9f
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3306
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3307
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getBluetoothAudioDeviceCategory(Ljava/lang/String;)I

    move-result v2

    .line 3308
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3309
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3310
    goto/16 :goto_0

    .line 3293
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_a0
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3295
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3296
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3297
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setBluetoothAudioDeviceCategory(Ljava/lang/String;I)Z

    move-result v3

    .line 3298
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3299
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3300
    goto/16 :goto_0

    .line 3285
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Z
    :pswitch_a1
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3286
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3287
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setCsdAsAFeatureEnabled(Z)V

    .line 3288
    goto/16 :goto_0

    .line 3277
    .end local v1    # "_arg0":Z
    :pswitch_a2
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureEnabled()Z

    move-result v1

    .line 3278
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3279
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3280
    goto/16 :goto_0

    .line 3270
    .end local v1    # "_result":Z
    :pswitch_a3
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isCsdAsAFeatureAvailable()Z

    move-result v1

    .line 3271
    .restart local v1    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3272
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3273
    goto/16 :goto_0

    .line 3263
    .end local v1    # "_result":Z
    :pswitch_a4
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isCsdEnabled()Z

    move-result v1

    .line 3264
    .restart local v1    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3265
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3266
    goto/16 :goto_0

    .line 3256
    .end local v1    # "_result":Z
    :pswitch_a5
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3257
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3258
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->forceComputeCsdOnAllDevices(Z)V

    .line 3259
    goto/16 :goto_0

    .line 3248
    .end local v1    # "_arg0":Z
    :pswitch_a6
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3249
    .restart local v1    # "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3250
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->forceUseFrameworkMel(Z)V

    .line 3251
    goto/16 :goto_0

    .line 3240
    .end local v1    # "_arg0":Z
    :pswitch_a7
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3241
    .local v1, "_arg0":F
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3242
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setCsd(F)V

    .line 3243
    goto/16 :goto_0

    .line 3232
    .end local v1    # "_arg0":F
    :pswitch_a8
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getCsd()F

    move-result v1

    .line 3233
    .local v1, "_result":F
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3234
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3235
    goto/16 :goto_0

    .line 3225
    .end local v1    # "_result":F
    :pswitch_a9
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3226
    .local v1, "_arg0":F
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3227
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setOutputRs2UpperBound(F)V

    .line 3228
    goto/16 :goto_0

    .line 3217
    .end local v1    # "_arg0":F
    :pswitch_aa
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getOutputRs2UpperBound()F

    move-result v1

    .line 3218
    .local v1, "_result":F
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3219
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3220
    goto/16 :goto_0

    .line 3210
    .end local v1    # "_result":F
    :pswitch_ab
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3211
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3212
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->lowerVolumeToRs1(Ljava/lang/String;)V

    .line 3213
    goto/16 :goto_0

    .line 3201
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_ac
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3202
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3203
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 3204
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3205
    goto/16 :goto_0

    .line 3191
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_ad
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3192
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3193
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isStreamMutableByUi(I)Z

    move-result v2

    .line 3194
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3195
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3196
    goto/16 :goto_0

    .line 3181
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_ae
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3182
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3183
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v2

    .line 3184
    .restart local v2    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3185
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3186
    goto/16 :goto_0

    .line 3171
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_af
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3172
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3173
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    .line 3174
    .restart local v2    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3175
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3176
    goto/16 :goto_0

    .line 3163
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_b0
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3164
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3165
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeControllerLongPressTimeoutEnabled(Z)V

    .line 3166
    goto/16 :goto_0

    .line 3152
    .end local v1    # "_arg0":Z
    :pswitch_b1
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 3154
    .local v1, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3155
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3156
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 3157
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    goto/16 :goto_0

    .line 3144
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    .end local v2    # "_arg1":Z
    :pswitch_b2
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getVolumeController()Landroid/media/IVolumeController;

    move-result-object v1

    .line 3145
    .local v1, "_result":Landroid/media/IVolumeController;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3146
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3147
    goto/16 :goto_0

    .line 3136
    .end local v1    # "_result":Landroid/media/IVolumeController;
    :pswitch_b3
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v1

    .line 3137
    .local v1, "_arg0":Landroid/media/IVolumeController;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3138
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 3139
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3140
    goto/16 :goto_0

    .line 3128
    .end local v1    # "_arg0":Landroid/media/IVolumeController;
    :pswitch_b4
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v1

    .line 3129
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3130
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3131
    goto/16 :goto_0

    .line 3119
    .end local v1    # "_result":Z
    :pswitch_b5
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v1

    .line 3120
    .local v1, "_arg0":Landroid/media/IAudioRoutesObserver;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3121
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v2

    .line 3122
    .local v2, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3123
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3124
    goto/16 :goto_0

    .line 3106
    .end local v1    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v2    # "_result":Landroid/media/AudioRoutesInfo;
    :pswitch_b6
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 3108
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3110
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3111
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3112
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V

    .line 3113
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3114
    goto/16 :goto_0

    .line 3097
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_b7
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3098
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3099
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setNotifAliasRingForTest(Z)V

    .line 3100
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3101
    goto/16 :goto_0

    .line 3086
    .end local v1    # "_arg0":Z
    :pswitch_b8
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IStreamAliasingDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IStreamAliasingDispatcher;

    move-result-object v1

    .line 3088
    .local v1, "_arg0":Landroid/media/IStreamAliasingDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3089
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3090
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->registerStreamAliasingDispatcher(Landroid/media/IStreamAliasingDispatcher;Z)V

    .line 3091
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3092
    goto/16 :goto_0

    .line 3078
    .end local v1    # "_arg0":Landroid/media/IStreamAliasingDispatcher;
    .end local v2    # "_arg1":Z
    :pswitch_b9
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isVolumeControlUsingVolumeGroups()Z

    move-result v1

    .line 3079
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3081
    goto/16 :goto_0

    .line 3069
    .end local v1    # "_result":Z
    :pswitch_ba
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3070
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3071
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getStreamTypeAlias(I)I

    move-result v2

    .line 3072
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3073
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3074
    goto/16 :goto_0

    .line 3061
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_bb
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getIndependentStreamTypes()Ljava/util/List;

    move-result-object v1

    .line 3062
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3063
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3064
    goto/16 :goto_0

    .line 3054
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_bc
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v1

    .line 3055
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3056
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3057
    goto/16 :goto_0

    .line 3047
    .end local v1    # "_result":I
    :pswitch_bd
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 3048
    .local v1, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3049
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3050
    goto/16 :goto_0

    .line 3039
    .end local v1    # "_result":Landroid/media/IRingtonePlayer;
    :pswitch_be
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 3040
    .local v1, "_arg0":Landroid/media/IRingtonePlayer;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3041
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 3042
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3043
    goto/16 :goto_0

    .line 3028
    .end local v1    # "_arg0":Landroid/media/IRingtonePlayer;
    :pswitch_bf
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3030
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3031
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3032
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 3033
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3034
    goto/16 :goto_0

    .line 3017
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_c0
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3019
    .local v1, "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 3020
    .local v2, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3021
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 3022
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3023
    goto/16 :goto_0

    .line 3006
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_c1
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3008
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 3009
    .restart local v2    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;Landroid/content/AttributionSource;)V

    .line 3011
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    goto/16 :goto_0

    .line 2993
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_c2
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2995
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2997
    .local v2, "_arg1":I
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2998
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2999
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;ILandroid/content/AttributionSource;)V

    .line 3000
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3001
    goto/16 :goto_0

    .line 2985
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_c3
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v1

    .line 2986
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2987
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2988
    goto/16 :goto_0

    .line 2977
    .end local v1    # "_result":I
    :pswitch_c4
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2978
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2979
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 2980
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2981
    goto/16 :goto_0

    .line 2961
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_c5
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v1

    .line 2963
    .local v1, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2965
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    .line 2967
    .local v3, "_arg2":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2968
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2969
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v5

    .line 2970
    .local v5, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2971
    invoke-virtual {v13, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2972
    goto/16 :goto_0

    .line 2933
    .end local v1    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/media/AudioAttributes;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_c6
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 2935
    .local v1, "_arg0":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2937
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2939
    .local v3, "_arg2":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v4

    .line 2941
    .local v4, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2943
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2945
    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2947
    .local v7, "_arg6":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2949
    .local v8, "_arg7":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v9

    .line 2951
    .local v9, "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2952
    .local v10, "_arg9":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2953
    invoke-virtual/range {v0 .. v10}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v15

    .line 2954
    .local v15, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2955
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 2956
    goto/16 :goto_0

    .line 2925
    .end local v1    # "_arg0":Landroid/media/AudioAttributes;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/IBinder;
    .end local v4    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":Ljava/lang/String;
    .end local v8    # "_arg7":I
    .end local v9    # "_arg8":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v10    # "_arg9":I
    .end local v15    # "_result":I
    :pswitch_c7
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v1

    .line 2926
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2927
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2928
    goto/16 :goto_0

    .line 2917
    .end local v1    # "_result":Z
    :pswitch_c8
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2918
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2919
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 2920
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2921
    goto/16 :goto_0

    .line 2909
    .end local v1    # "_arg0":Z
    :pswitch_c9
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v1

    .line 2910
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2911
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2912
    goto/16 :goto_0

    .line 2901
    .end local v1    # "_result":Z
    :pswitch_ca
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2902
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2903
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setLeAudioSuspended(Z)V

    .line 2904
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2905
    goto/16 :goto_0

    .line 2892
    .end local v1    # "_arg0":Z
    :pswitch_cb
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2893
    .restart local v1    # "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2894
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setA2dpSuspended(Z)V

    .line 2895
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2896
    goto/16 :goto_0

    .line 2883
    .end local v1    # "_arg0":Z
    :pswitch_cc
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2884
    .restart local v1    # "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2885
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 2886
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2887
    goto/16 :goto_0

    .line 2875
    .end local v1    # "_arg0":Z
    :pswitch_cd
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v1

    .line 2876
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2877
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2878
    goto/16 :goto_0

    .line 2863
    .end local v1    # "_result":Z
    :pswitch_ce
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2865
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2867
    .local v2, "_arg1":Z
    sget-object v3, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/AttributionSource;

    .line 2868
    .local v3, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2869
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Landroid/os/IBinder;ZLandroid/content/AttributionSource;)V

    .line 2870
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2871
    goto/16 :goto_0

    .line 2853
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_cf
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2854
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2855
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getEncodedSurroundMode(I)I

    move-result v2

    .line 2856
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2857
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2858
    goto/16 :goto_0

    .line 2843
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_d0
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2844
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2845
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setEncodedSurroundMode(I)Z

    move-result v2

    .line 2846
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2847
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2848
    goto/16 :goto_0

    .line 2833
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_d1
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2834
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2835
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isSurroundFormatEnabled(I)Z

    move-result v2

    .line 2836
    .restart local v2    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2837
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2838
    goto/16 :goto_0

    .line 2821
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_d2
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2823
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2824
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2825
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setSurroundFormatEnabled(IZ)Z

    move-result v3

    .line 2826
    .local v3, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2827
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2828
    goto/16 :goto_0

    .line 2813
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v3    # "_result":Z
    :pswitch_d3
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v1

    .line 2814
    .local v1, "_result":Ljava/util/List;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2815
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2816
    goto/16 :goto_0

    .line 2806
    .end local v1    # "_result":Ljava/util/List;
    :pswitch_d4
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getSurroundFormats()Ljava/util/Map;

    move-result-object v1

    .line 2807
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2808
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2809
    goto/16 :goto_0

    .line 2801
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_d5
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 2802
    goto/16 :goto_0

    .line 2796
    :pswitch_d6
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 2797
    goto/16 :goto_0

    .line 2789
    :pswitch_d7
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v1

    .line 2790
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2791
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2792
    goto/16 :goto_0

    .line 2780
    .end local v1    # "_result":Z
    :pswitch_d8
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2782
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 2783
    .local v2, "_arg1":F
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2784
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 2785
    goto/16 :goto_0

    .line 2770
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":F
    :pswitch_d9
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2772
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2773
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2774
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->playSoundEffect(II)V

    .line 2775
    goto/16 :goto_0

    .line 2762
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_da
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v1

    .line 2763
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2764
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2765
    goto/16 :goto_0

    .line 2750
    .end local v1    # "_result":I
    :pswitch_db
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2752
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2754
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2755
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2756
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2757
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2758
    goto/16 :goto_0

    .line 2740
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/IBinder;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_dc
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2741
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2742
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v2

    .line 2743
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2744
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2745
    goto/16 :goto_0

    .line 2730
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_dd
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2731
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2732
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v2

    .line 2733
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2734
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2735
    goto/16 :goto_0

    .line 2719
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_de
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2721
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2722
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2723
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 2724
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2725
    goto/16 :goto_0

    .line 2709
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_df
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2710
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2711
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v2

    .line 2712
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2713
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2714
    goto/16 :goto_0

    .line 2701
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_e0
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v1

    .line 2702
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2703
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2704
    goto/16 :goto_0

    .line 2694
    .end local v1    # "_result":I
    :pswitch_e1
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v1

    .line 2695
    .restart local v1    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2696
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2697
    goto/16 :goto_0

    .line 2684
    .end local v1    # "_result":I
    :pswitch_e2
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2686
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2687
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2688
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2689
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2690
    goto/16 :goto_0

    .line 2673
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_e3
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2675
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2676
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2677
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 2678
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2679
    goto/16 :goto_0

    .line 2665
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_e4
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2666
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2667
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setMicrophoneMuteFromSwitch(Z)V

    .line 2668
    goto/16 :goto_0

    .line 2655
    .end local v1    # "_arg0":Z
    :pswitch_e5
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2656
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isInputGainFixed(Landroid/media/AudioDeviceAttributes;)Z

    move-result v2

    .line 2658
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2660
    goto/16 :goto_0

    .line 2647
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":Z
    :pswitch_e6
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getMinInputGainIndex()I

    move-result v1

    .line 2648
    .local v1, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2650
    goto/16 :goto_0

    .line 2640
    .end local v1    # "_result":I
    :pswitch_e7
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getMaxInputGainIndex()I

    move-result v1

    .line 2641
    .restart local v1    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2642
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    goto/16 :goto_0

    .line 2631
    .end local v1    # "_result":I
    :pswitch_e8
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2632
    .local v1, "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2633
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result v2

    .line 2634
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2635
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2636
    goto/16 :goto_0

    .line 2620
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_result":I
    :pswitch_e9
    sget-object v1, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    .line 2622
    .restart local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2623
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2624
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->setInputGainIndex(Landroid/media/AudioDeviceAttributes;I)V

    .line 2625
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2626
    goto/16 :goto_0

    .line 2605
    .end local v1    # "_arg0":Landroid/media/AudioDeviceAttributes;
    .end local v2    # "_arg1":I
    :pswitch_ea
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2607
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2609
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2611
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2612
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2613
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V

    .line 2614
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    goto/16 :goto_0

    .line 2595
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_eb
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2596
    .restart local v1    # "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2597
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isHotwordStreamSupported(Z)Z

    move-result v2

    .line 2598
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2599
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2600
    goto/16 :goto_0

    .line 2587
    .end local v1    # "_arg0":Z
    .end local v2    # "_result":Z
    :pswitch_ec
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isUltrasoundSupported()Z

    move-result v1

    .line 2588
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2589
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2590
    goto/16 :goto_0

    .line 2580
    .end local v1    # "_result":Z
    :pswitch_ed
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isMicrophoneMuted()Z

    move-result v1

    .line 2581
    .restart local v1    # "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2582
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2583
    goto/16 :goto_0

    .line 2573
    .end local v1    # "_result":Z
    :pswitch_ee
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v1

    .line 2574
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2576
    goto/16 :goto_0

    .line 2566
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    :pswitch_ef
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getSupportedSystemUsages()[I

    move-result-object v1

    .line 2567
    .local v1, "_result":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2568
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2569
    goto/16 :goto_0

    .line 2558
    .end local v1    # "_result":[I
    :pswitch_f0
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2559
    .local v1, "_arg0":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2560
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSupportedSystemUsages([I)V

    .line 2561
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2562
    goto/16 :goto_0

    .line 2548
    .end local v1    # "_arg0":[I
    :pswitch_f1
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2549
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2550
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 2551
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2552
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2553
    goto/16 :goto_0

    .line 2533
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_f2
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2535
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2537
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2539
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2540
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2541
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustVolumeGroupVolume(IIILjava/lang/String;)V

    .line 2542
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2543
    goto/16 :goto_0

    .line 2523
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_f3
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2524
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2525
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isVolumeGroupMuted(I)Z

    move-result v2

    .line 2526
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2527
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2528
    goto/16 :goto_0

    .line 2513
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_f4
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2514
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2515
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getLastAudibleVolumeForVolumeGroup(I)I

    move-result v2

    .line 2516
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2517
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2518
    goto/16 :goto_0

    .line 2503
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_f5
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2504
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2505
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupMinVolumeIndex(I)I

    move-result v2

    .line 2506
    .restart local v2    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    goto/16 :goto_0

    .line 2493
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_f6
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2494
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2495
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupMaxVolumeIndex(I)I

    move-result v2

    .line 2496
    .restart local v2    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2497
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2498
    goto/16 :goto_0

    .line 2483
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_f7
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2484
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2485
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getVolumeGroupVolumeIndex(I)I

    move-result v2

    .line 2486
    .restart local v2    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2487
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    goto/16 :goto_0

    .line 2466
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_f8
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2468
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2470
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2472
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2474
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2475
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2476
    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setVolumeGroupVolumeIndex(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2478
    goto/16 :goto_0

    .line 2458
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_f9
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getAudioVolumeGroups()Ljava/util/List;

    move-result-object v1

    .line 2459
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2460
    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2461
    goto/16 :goto_0

    .line 2449
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :pswitch_fa
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2450
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2451
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v2

    .line 2452
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2453
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2454
    goto/16 :goto_0

    .line 2439
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_fb
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2440
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2441
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v2

    .line 2442
    .restart local v2    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    goto/16 :goto_0

    .line 2429
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_fc
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2430
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2431
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v2

    .line 2432
    .restart local v2    # "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2433
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2434
    goto/16 :goto_0

    .line 2412
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_fd
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2414
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2416
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2418
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2420
    .local v4, "_arg3":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2421
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2422
    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V

    .line 2423
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2424
    goto/16 :goto_0

    .line 2404
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_fe
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v1

    .line 2405
    .local v1, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2406
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2407
    goto/16 :goto_0

    .line 2394
    .end local v1    # "_result":Z
    :pswitch_ff
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2396
    .local v1, "_arg0":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2397
    .local v2, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2398
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 2399
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    goto/16 :goto_0

    .line 2384
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Landroid/os/IBinder;
    :pswitch_100
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2385
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2386
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v2

    .line 2387
    .local v2, "_result":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2388
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2389
    goto/16 :goto_0

    .line 2370
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Z
    :pswitch_101
    sget-object v1, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 2372
    .local v1, "_arg0":Landroid/view/KeyEvent;
    invoke-virtual {v12}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2374
    .local v2, "_arg1":Z
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2376
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2377
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2378
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2379
    goto/16 :goto_0

    .line 2356
    .end local v1    # "_arg0":Landroid/view/KeyEvent;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_102
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2358
    .local v1, "_arg0":Landroid/media/VolumeInfo;
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 2360
    .local v2, "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2361
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2362
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->getDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)Landroid/media/VolumeInfo;

    move-result-object v4

    .line 2363
    .local v4, "_result":Landroid/media/VolumeInfo;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2364
    const/4 v5, 0x1

    invoke-virtual {v13, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2365
    goto/16 :goto_0

    .line 2343
    .end local v1    # "_arg0":Landroid/media/VolumeInfo;
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_result":Landroid/media/VolumeInfo;
    :pswitch_103
    sget-object v1, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/VolumeInfo;

    .line 2345
    .restart local v1    # "_arg0":Landroid/media/VolumeInfo;
    sget-object v2, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 2347
    .restart local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2348
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2349
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->setDeviceVolume(Landroid/media/VolumeInfo;Landroid/media/AudioDeviceAttributes;Ljava/lang/String;)V

    .line 2350
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2351
    goto/16 :goto_0

    .line 2326
    .end local v1    # "_arg0":Landroid/media/VolumeInfo;
    .end local v2    # "_arg1":Landroid/media/AudioDeviceAttributes;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_104
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2328
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2330
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2332
    .local v3, "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2334
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2335
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2336
    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2338
    goto/16 :goto_0

    .line 2311
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_105
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2313
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2315
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2317
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2318
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2319
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 2320
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2321
    goto/16 :goto_0

    .line 2294
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_106
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2296
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2298
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2300
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2302
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2303
    .restart local v5    # "_arg4":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2304
    invoke-virtual/range {v0 .. v5}, Landroid/media/IAudioService$Stub;->adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    goto/16 :goto_0

    .line 2279
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    :pswitch_107
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2281
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2283
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2285
    .restart local v3    # "_arg2":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2286
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2287
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 2288
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2289
    goto/16 :goto_0

    .line 2272
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/lang/String;
    :pswitch_108
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->permissionUpdateBarrier()V

    .line 2273
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2274
    goto/16 :goto_0

    .line 2261
    :pswitch_109
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2263
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2265
    .restart local v2    # "_arg1":I
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 2266
    .local v3, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2267
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->portEvent(IILandroid/os/PersistableBundle;)V

    .line 2268
    goto/16 :goto_0

    .line 2251
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_10a
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2253
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2254
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2255
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerSessionId(II)V

    .line 2256
    goto/16 :goto_0

    .line 2243
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_10b
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2244
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2245
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->releaseRecorder(I)V

    .line 2246
    goto/16 :goto_0

    .line 2233
    .end local v1    # "_arg0":I
    :pswitch_10c
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2235
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2236
    .restart local v2    # "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2237
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->recorderEvent(II)V

    .line 2238
    goto :goto_0

    .line 2223
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :pswitch_10d
    invoke-virtual {v12}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2224
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2225
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->trackRecorder(Landroid/os/IBinder;)I

    move-result v2

    .line 2226
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2228
    goto :goto_0

    .line 2215
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_10e
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2216
    .local v1, "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2217
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 2218
    goto :goto_0

    .line 2203
    .end local v1    # "_arg0":I
    :pswitch_10f
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2205
    .restart local v1    # "_arg0":I
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2207
    .local v2, "_arg1":I
    invoke-virtual {v12}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 2208
    .local v3, "_arg2":[I
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2209
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/IAudioService$Stub;->playerEvent(II[I)V

    .line 2210
    goto :goto_0

    .line 2193
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    :pswitch_110
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2195
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 2196
    .local v2, "_arg1":Landroid/media/AudioAttributes;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2197
    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 2198
    goto :goto_0

    .line 2183
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/media/AudioAttributes;
    :pswitch_111
    sget-object v1, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/PlayerBase$PlayerIdCard;

    .line 2184
    .local v1, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    invoke-virtual {v12}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2185
    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v2

    .line 2186
    .local v2, "_result":I
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    goto :goto_0

    .line 2175
    .end local v1    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    .end local v2    # "_result":I
    :pswitch_112
    invoke-virtual {v0}, Landroid/media/IAudioService$Stub;->getNativeInterface()Landroid/media/IAudioManagerNative;

    move-result-object v1

    .line 2176
    .local v1, "_result":Landroid/media/IAudioManagerNative;
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2177
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2178
    nop

    .line 4896
    .end local v1    # "_result":Landroid/media/IAudioManagerNative;
    :goto_0
    const/16 v16, 0x1

    return v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist recenterHeadTracker_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10039
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10040
    return-void
.end method

.method protected blacklist registerHeadToSoundstagePoseCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9989
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9990
    return-void
.end method

.method protected blacklist registerMuteAwaitConnectionDispatcher_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10083
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10084
    return-void
.end method

.method protected blacklist registerSpatializerHeadTrackingCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9979
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9980
    return-void
.end method

.method protected blacklist registerSpatializerOutputCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10059
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10060
    return-void
.end method

.method protected blacklist registerStreamAliasingDispatcher_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9679
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9680
    return-void
.end method

.method protected blacklist removeAssistantServicesUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10110
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10111
    return-void
.end method

.method protected blacklist removeDeviceAsNonDefaultForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9840
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9841
    return-void
.end method

.method protected blacklist removePreferredDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9825
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9826
    return-void
.end method

.method protected blacklist removeSpatializerCompatibleAudioDevice_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10009
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10010
    return-void
.end method

.method protected blacklist sendFocusLossAndUpdate_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10095
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10096
    return-void
.end method

.method protected blacklist sendFocusLoss_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10100
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10101
    return-void
.end method

.method protected blacklist setA2dpSuspended_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9636
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9637
    return-void
.end method

.method protected blacklist setActiveAssistantServiceUids_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10115
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10116
    return-void
.end method

.method protected blacklist setBluetoothAudioDeviceCategory_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9759
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9760
    return-void
.end method

.method protected blacklist setBluetoothVariableLatencyEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10141
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10142
    return-void
.end method

.method protected blacklist setCsdAsAFeatureEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9754
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9755
    return-void
.end method

.method protected blacklist setCsd_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9724
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9725
    return-void
.end method

.method protected blacklist setDesiredHeadTrackingMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10014
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10015
    return-void
.end method

.method protected blacklist setDeviceAsNonDefaultForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9835
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9836
    return-void
.end method

.method protected blacklist setDeviceVolumeBehavior_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9867
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolumeBehavior:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9868
    return-void
.end method

.method protected blacklist setDeviceVolume_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9490
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setDeviceVolume:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9491
    return-void
.end method

.method protected blacklist setEnableHardening_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10178
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10179
    return-void
.end method

.method protected blacklist setEncodedSurroundMode_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9627
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9628
    return-void
.end method

.method protected blacklist setFadeManagerConfigurationForFocusLoss_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10158
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10159
    return-void
.end method

.method protected blacklist setHeadTrackerEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9958
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9959
    return-void
.end method

.method protected blacklist setInputGainIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9582
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9583
    return-void
.end method

.method protected blacklist setLeAudioSuspended_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9641
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.BLUETOOTH_STACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9642
    return-void
.end method

.method protected blacklist setMasterMute_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9505
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9506
    return-void
.end method

.method protected blacklist setMultiAudioFocusEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9878
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9879
    return-void
.end method

.method protected blacklist setNotifAliasRingForTest_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9684
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9685
    return-void
.end method

.method protected blacklist setOutputRs2UpperBound_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9714
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9715
    return-void
.end method

.method protected blacklist setPreferredDevicesForStrategy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9820
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9821
    return-void
.end method

.method protected blacklist setRingtonePlayer_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9657
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.REMOTE_AUDIO_PLAYBACK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9658
    return-void
.end method

.method protected blacklist setSpatializerEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9970
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9971
    return-void
.end method

.method protected blacklist setSpatializerGlobalTransform_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10034
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10035
    return-void
.end method

.method protected blacklist setSpatializerParameter_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10044
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10045
    return-void
.end method

.method protected blacklist setSupportedSystemUsages_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9555
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9556
    return-void
.end method

.method protected blacklist setVolumeControllerLongPressTimeoutEnabled_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9699
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9700
    return-void
.end method

.method protected blacklist setVolumeGroupVolumeIndex_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9520
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/media/IAudioService$Stub;->PERMISSIONS_setVolumeGroupVolumeIndex:[Ljava/lang/String;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAnyOf([Ljava/lang/String;II)V

    .line 9521
    return-void
.end method

.method protected blacklist setWiredDeviceConnectionState_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9689
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9690
    return-void
.end method

.method protected blacklist shouldNotificationSoundPlay_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10173
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.QUERY_AUDIO_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10174
    return-void
.end method

.method protected blacklist supportsBluetoothVariableLatency_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10136
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10137
    return-void
.end method

.method protected blacklist unregisterHeadToSoundstagePoseCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9994
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9995
    return-void
.end method

.method protected blacklist unregisterSpatializerHeadTrackingCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9984
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9985
    return-void
.end method

.method protected blacklist unregisterSpatializerOutputCallback_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 10064
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 10065
    return-void
.end method

.method protected blacklist updateMixingRulesForPolicy_enforcePermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9782
    iget-object v0, p0, Landroid/media/IAudioService$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/media/IAudioService$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9783
    return-void
.end method
