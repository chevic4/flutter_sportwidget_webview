import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_websportfire/src/presentation/info_screen_cubit/info_screen_cubit.dart';

class MessageScreen extends StatelessWidget {
  final String message;
  const MessageScreen({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<InfoScreenCubit>();
    return GestureDetector(
      onTap: () {
        cubit.refreshStatus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const Text('tap to refresh'),
        ],
      ),
    );
  }
}
