import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_websportfire/src/application/internetchecker/internet_checker.dart';
import 'package:flutter_websportfire/src/domain/uscases/url_service.dart';
part 'info_screen_state.dart';

class InfoScreenCubit extends Cubit<CubitScreenState> {
  final _urlService = UrlService();
  InfoScreenCubit() : super(CubitScreenStateInit()) {
    _initCubit();
  }

  void _initCubit() async {
    emit(CubitScreenStateLoading());
    bool netStatus = await NetworkInfo.netStatus();

    if (netStatus) {
      await _urlService.initService();
      String url = _urlService.url;
      // добавить проверку эмулятор, симки
      if (url == '') {
        emit(CubitScreenStatePlugView());
      } else {
        emit(CubitScreenStateWebView());
      }
    } else {
      emit(CubitScreenStateNoNet());
    }
    emit(CubitScreenStateNoNet());
  }

  void refreshStatus() async {
    emit(CubitScreenStateWebView());
  }
}
