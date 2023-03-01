import 'package:flutter_websportfire/src/domain/data_providers/url_data_provider.dart';

class UrlService {
  UrlDataProvider urlDataProvider = UrlDataProvider();

  String get url => urlDataProvider.urlData;

  Future<void> initService() async {
    await urlDataProvider.getUrl();
  }

  void saveUrl(String value) {
    urlDataProvider.urlDataSet = value;
    urlDataProvider.saveUrl();
  }
}
