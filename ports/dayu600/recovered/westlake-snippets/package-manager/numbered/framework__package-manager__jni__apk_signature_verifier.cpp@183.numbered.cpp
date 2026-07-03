// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__package-manager__jni__apk_signature_verifier.cpp@183.html
// title: p1612 framework/package-manager/jni/apk_signature_verifier.cpp:183

  171:     }
  172:  
  173:     // Read block size (8 bytes before magic)
  174:     uint64_t blockSize;
  175:     memcpy(&blockSize, &apkData[cdOffset - 24], 8);
  176:  
  177:     outBlockOffset = cdOffset - blockSize - 8;
  178:     outBlockSize = blockSize;
  179:  
  180:     return true;
  181: }
  182:  
  183: ApkSignatureVerifier::VerifyResult ApkSignatureVerifier::Verify(const std::string& apkPath) {
  184:     LOGI("Verifying APK signature: %{public}s", apkPath.c_str());
  185:  
  186:     // Try V2 first (stronger scheme)
  187:     VerifyResult result = VerifyV2(apkPath);
  188:     if (result.verified) {
  189:         LOGI("APK verified with V2 scheme, cert=%{public}s", result.certFingerprint.c_str());
  190:         return result;
  191:     }
  192:  
  193:     // Fall back to V1
  194:     result = VerifyV1(apkPath);
  195:     if (result.verified) {
