// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\framework__contentprovider__jni__oh_datashare_client.cpp@268.html
// title: p1612 framework/contentprovider/jni/oh_datashare_client.cpp:268

  256:         return -1;
  257:     }
  258:  
  259:     OHOS::Uri ohUri(uri);
  260:     int fd = helper_->OpenFile(ohUri, mode);
  261:     LOGI("openFile: uri=%s, mode=%s, fd=%d", uri.c_str(), mode.c_str(), fd);
  262:     return fd;
  263: }
  264:  
  265: // ==================== Data Conversion Helpers ====================
  266:  
  267: std::shared_ptr<OHOS::DataShare::DataSharePredicates>
  268: OHDataShareClient::buildPredicates(const std::string& selection,
  269:                                     const std::vector<std::string>& selArgs) {
  270:     auto predicates = std::make_shared<OHOS::DataShare::DataSharePredicates>();
  271:  
  272:     if (selection.empty()) {
  273:         return predicates;
  274:     }
  275:  
  276:     // Parse SQL-style selection into OH DataSharePredicates.
  277:     //
  278:     // Supports basic patterns:
  279:     //   "column = ?"          -> EqualTo(column, value)
  280:     //   "column != ?"         -> NotEqualTo(column, value)
