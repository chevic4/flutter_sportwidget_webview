import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_websportfire/src/presentation/info_screen.dart';

import '../presentation/info_screen_cubit/info_screen_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => InfoScreenCubit(),
        child: const InfoScreen(),
      ),
    );
  }
}
