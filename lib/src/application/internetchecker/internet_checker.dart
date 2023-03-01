import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkInfo {
  static Future<bool> netStatus() async {
    final internetConnectionChecker = InternetConnectionChecker();
    bool networkInfo = await internetConnectionChecker.hasConnection;
    return networkInfo;
  }
}
