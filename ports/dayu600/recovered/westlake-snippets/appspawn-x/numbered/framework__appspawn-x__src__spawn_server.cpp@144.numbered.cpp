// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__appspawn-x__src__spawn_server.cpp@144.html
// title: p1612 framework/appspawn-x/src/spawn_server.cpp:144
// summary: SpawnServer::createListenSocket</span><br><span>?????? init ??? bind/listen/label ??`OHOS_SOCKET_<name>` fd??? socket ????????OH init/SELinux ???

  132: // Preferred path (when running as init service):
  133: //   init cfg ?????? "socket" ??? init ??fork ??bind+listen+labeled??/td></tr><tr><td class=ln>134</td><td class=cd>//   fd ????? env `OHOS_SOCKET_<socketName>` ?????????????????????/td></tr><tr><td class=ln>135</td><td class=cd>//   ?????OH ??? appspawn ?????????????????Enforcing ?????/td></tr><tr><td class=ln>136</td><td class=cd>//   ??ppspawn ??? policy ?????unlink dev_unix_file sock_file;
  137: //    ??? factory policy.31 ??? "AppSpawnX" ??name-based type_transition,
  138: //    ??? bind ?????socket label ??dev_unix_file ??? appspawn_socket,
  139: //    ?????avc denied????/td></tr><tr><td class=ln>140</td><td class=cd>//
  141: // Fallback path (standalone / unit test):
  142: //   env ??? ???????? socket+unlink+bind+listen ?????ermissive ????????/td></tr><tr><td class=ln>143</td><td class=cd>// ---------------------------------------------------------------------------
  144: int SpawnServer::createListenSocket() {
  145:     std::string envKey = "OHOS_SOCKET_" + socketName_;
  146:     const char* fdStr = getenv(envKey.c_str());
  147:     if (fdStr != nullptr && *fdStr != '\0') {
  148:         int fd = atoi(fdStr);
  149:         if (fd >= 0) {
  150:             listenFd_ = fd;
  151:             LOGI("Using init-provided socket: env=%s fd=%d path=%s",
  152:                  envKey.c_str(), fd, socketPath_.c_str());
  153:             // init ??bind+listen+label; ??? unlink/bind/listen/chmod,
  154:             // ??? Enforcing ?????policy ??(avc denied unlink dev_unix_file)
  155:             return 0;
  156:         }
