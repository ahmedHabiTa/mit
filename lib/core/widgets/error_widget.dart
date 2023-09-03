import 'package:flutter/material.dart';

class ErrorStateWidget extends StatelessWidget {
  final String message;
  final Function() onTap;
  const ErrorStateWidget({
    super.key,
    required this.message,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(message),
          const SizedBox(height: 10),
          IconButton(
            onPressed: onTap,
            icon: const Icon(Icons.replay),
          ),
        ],
      ),
    );
  }
}
