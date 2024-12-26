import 'package:arestro/core/utils/enums/device_type.dart';
import 'package:flutter/material.dart';

class DeviceInfo {
  final double width;
  final double height;
  final double localWidth;
  final double localHeight;
  final Orientation orientation;
  final DeviceType deviceType;

  DeviceInfo({
    required this.width,
    required this.height,
    required this.localWidth,
    required this.localHeight,
    required this.orientation,
    required this.deviceType,
  });


}
