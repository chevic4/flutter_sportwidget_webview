import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_websportfire/src/presentation/message_screen.dart';
import 'package:flutter_websportfire/src/presentation/plug_screen.dart';
import 'package:flutter_websportfire/src/presentation/webview_screen.dart';

import 'info_screen_cubit/info_screen_cubit.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<InfoScreenCubit, CubitScreenState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case CubitScreenStatePlugView:
                return const PlugScreen();
              case CubitScreenStateNoNet:
                return const MessageScreen(message: 'no internet');
              case CubitScreenStateWebView:
                return const WebViewScreen(url: 'https://blog.mindorks.com');
              default:
                return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
