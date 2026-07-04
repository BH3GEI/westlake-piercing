// No-op replacement for service/GraphicsStatsService.cpp (the real one needs
// libprotobuf + protoc codegen; graphics-stats dumping is not used on OHOS).
#include "service/GraphicsStatsService.h"

namespace android {
namespace uirenderer {

void GraphicsStatsService::saveBuffer(const std::string&, uid_t, const std::string&, int64_t,
                                      int64_t, int64_t, const ProfileData*) {}

GraphicsStatsService::Dump* GraphicsStatsService::createDump(int, DumpType) {
    return nullptr;
}

void GraphicsStatsService::addToDump(Dump*, const std::string&, uid_t, const std::string&, int64_t,
                                     int64_t, int64_t, const ProfileData*) {}

void GraphicsStatsService::addToDump(Dump*, const std::string&) {}

void GraphicsStatsService::finishDump(Dump*) {}

void GraphicsStatsService::finishDumpInMemory(Dump*, AStatsEventList*, bool) {}

bool GraphicsStatsService::parseFromFile(const std::string&, protos::GraphicsStatsProto*) {
    return false;
}

}  // namespace uirenderer
}  // namespace android
