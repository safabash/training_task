import 'package:flutter/material.dart';

class HomeButtons extends StatelessWidget {
  const HomeButtons({super.key, required this.function, required this.text});
  final Function()? function;

  final String text;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
          minWidth: 100, minHeight: 60, maxWidth: 300, maxHeight: 120),
      child: ElevatedButton(
        onPressed: function,
        child: Text(text),
      ),
    );
  }
}
