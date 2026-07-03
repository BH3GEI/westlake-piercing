 
    LOGI("resultSetToCursor: %d columns, %d rows", colCount, rowCount);
    return cursor;
}
 
// ==================== OHDataShareClientManager ====================
 
OHDataShareClientManager& OHDataShareClientManager::getInstance() {
    static OHDataShareClientManager instance;
    return instance;
}
 
long OHDataShareClientManager::createClient(const std::string& bundleName) {
    auto client = OHDataShareClient::create(bundleName);
    if (!client) return 0;
 
    long handle = reinterpret_cast<long>(client.get());
    {
        std::lock_guard<std::mutex> lock(mutex_);
        clients_[handle] = client;
    }
    LOGI("createClient: bundle=%s, handle=%ld", bundleName.c_str(), handle);
    return handle;
}
 
