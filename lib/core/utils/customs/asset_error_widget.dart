import 'package:flutter/material.dart';
class AssetsErrorWidget extends StatelessWidget {
  const AssetsErrorWidget({
    super.key, this.width, this.height,
  });
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.transparent,
      child: const Center(
        child: Text(
          "Asset Not Found",
          style: TextStyle(
            fontSize: 15,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}