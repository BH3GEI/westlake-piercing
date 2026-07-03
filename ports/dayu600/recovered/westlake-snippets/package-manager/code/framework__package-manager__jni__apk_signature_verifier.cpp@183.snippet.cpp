    }
 
    // Read block size (8 bytes before magic)
    uint64_t blockSize;
    memcpy(&blockSize, &apkData[cdOffset - 24], 8);
 
    outBlockOffset = cdOffset - blockSize - 8;
    outBlockSize = blockSize;
 
    return true;
}
 
ApkSignatureVerifier::VerifyResult ApkSignatureVerifier::Verify(const std::string& apkPath) {
    LOGI("Verifying APK signature: %{public}s", apkPath.c_str());
 
    // Try V2 first (stronger scheme)
    VerifyResult result = VerifyV2(apkPath);
    if (result.verified) {
        LOGI("APK verified with V2 scheme, cert=%{public}s", result.certFingerprint.c_str());
        return result;
    }
 
    // Fall back to V1
    result = VerifyV1(apkPath);
    if (result.verified) {
