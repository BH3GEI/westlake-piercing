        return -1;
    }
 
    OHOS::Uri ohUri(uri);
    int fd = helper_->OpenFile(ohUri, mode);
    LOGI("openFile: uri=%s, mode=%s, fd=%d", uri.c_str(), mode.c_str(), fd);
    return fd;
}
 
// ==================== Data Conversion Helpers ====================
 
std::shared_ptr<OHOS::DataShare::DataSharePredicates>
OHDataShareClient::buildPredicates(const std::string& selection,
                                    const std::vector<std::string>& selArgs) {
    auto predicates = std::make_shared<OHOS::DataShare::DataSharePredicates>();
 
    if (selection.empty()) {
        return predicates;
    }
 
    // Parse SQL-style selection into OH DataSharePredicates.
    //
    // Supports basic patterns:
    //   "column = ?"          -> EqualTo(column, value)
    //   "column != ?"         -> NotEqualTo(column, value)
