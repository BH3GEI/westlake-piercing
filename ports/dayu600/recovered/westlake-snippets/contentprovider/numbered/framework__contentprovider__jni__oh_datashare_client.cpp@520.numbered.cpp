// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__contentprovider__jni__oh_datashare_client.cpp@520.html
// title: p1612 framework/contentprovider/jni/oh_datashare_client.cpp:520
// summary: OHDataShareClientManager::createClient</span><br><span>??shared_ptr ?????DataShareClient ?????????????? Java?????? manager map ?????shared_ptr??estroyClie

  508:  
  509:     LOGI("resultSetToCursor: %d columns, %d rows", colCount, rowCount);
  510:     return cursor;
  511: }
  512:  
  513: // ==================== OHDataShareClientManager ====================
  514:  
  515: OHDataShareClientManager& OHDataShareClientManager::getInstance() {
  516:     static OHDataShareClientManager instance;
  517:     return instance;
  518: }
  519:  
  520: long OHDataShareClientManager::createClient(const std::string& bundleName) {
  521:     auto client = OHDataShareClient::create(bundleName);
  522:     if (!client) return 0;
  523:  
  524:     long handle = reinterpret_cast<long>(client.get());
  525:     {
  526:         std::lock_guard<std::mutex> lock(mutex_);
  527:         clients_[handle] = client;
  528:     }
  529:     LOGI("createClient: bundle=%s, handle=%ld", bundleName.c_str(), handle);
  530:     return handle;
  531: }
  532:  
