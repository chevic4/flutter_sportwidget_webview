import 'package:shared_preferences/shared_preferences.dart';

class UrlDataProvider {
  String _urlData = '';
  final sharePreferences = SharedPreferences.getInstance();
  String get urlData => _urlData;
  set urlDataSet(String val) => _urlData = val;

  Future<void> getUrl() async {
    final url = (await sharePreferences).getString('urlData') ?? '';
    _urlData = url;
  }

  Future<void> saveUrl() async {
    (await sharePreferences).setString('urlData', _urlData);
  }
}
