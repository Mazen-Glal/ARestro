
import 'package:flutter/material.dart';

class DescriptionOfScreen extends StatelessWidget {
  const DescriptionOfScreen({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
    );
  }
}
