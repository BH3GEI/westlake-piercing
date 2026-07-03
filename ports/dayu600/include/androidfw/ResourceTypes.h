#pragma once

#include <stddef.h>
#include <stdint.h>

namespace android {

struct Res_png_9patch {
    int8_t wasDeserialized;
    int8_t numXDivs;
    int8_t numYDivs;
    int8_t numColors;

    uint32_t xDivsOffset;
    uint32_t yDivsOffset;
    uint32_t colorsOffset;

    int32_t paddingLeft;
    int32_t paddingRight;
    int32_t paddingTop;
    int32_t paddingBottom;

    enum : uint32_t {
        NO_COLOR = 0x00000001,
        TRANSPARENT_COLOR = 0x00000000,
    };

    int32_t* getXDivs() const {
        return reinterpret_cast<int32_t*>(reinterpret_cast<uint8_t*>(const_cast<Res_png_9patch*>(this)) +
                                          xDivsOffset);
    }

    int32_t* getYDivs() const {
        return reinterpret_cast<int32_t*>(reinterpret_cast<uint8_t*>(const_cast<Res_png_9patch*>(this)) +
                                          yDivsOffset);
    }

    uint32_t* getColors() const {
        return reinterpret_cast<uint32_t*>(
                reinterpret_cast<uint8_t*>(const_cast<Res_png_9patch*>(this)) + colorsOffset);
    }

    size_t serializedSize() const {
        return sizeof(Res_png_9patch) + (numXDivs + numYDivs) * sizeof(int32_t) +
               numColors * sizeof(uint32_t);
    }

    void fileToDevice() {}
    void deviceToFile() {}

    static Res_png_9patch* deserialize(Res_png_9patch* patch) {
        if (patch != nullptr) {
            patch->wasDeserialized = -1;
        }
        return patch;
    }
};

}  // namespace android
