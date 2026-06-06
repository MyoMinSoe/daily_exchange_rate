import 'package:flutter/material.dart';

class FailedWidget extends StatelessWidget {
  final String message;
  final Function() onRetry;
  const FailedWidget({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }
}
