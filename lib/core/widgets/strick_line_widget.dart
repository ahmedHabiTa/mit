import 'package:flutter/material.dart';

class StrikeThroughWidget extends StatelessWidget {
  final Widget child;
  final bool active;
  const StrikeThroughWidget(
      {super.key, required this.child, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal:
              8), // this line is optional to make strikethrough effect outside a text
      decoration: !active
          ? null
          : const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/dicount_line.png'),
                  fit: BoxFit.fitWidth),
            ),
      child: child,
    );
  }
}
