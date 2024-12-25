import 'package:arestro/core/utils/functions/get_device_info.dart';
import 'package:arestro/core/utils/models/device_info.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
    required this.builder,
    required this.mediaQueryData,
  });
  final MediaQueryData mediaQueryData;
  final Widget Function(BuildContext context, DeviceInfo deviceInfo) builder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        DeviceInfo deviceInfo = DeviceInfo(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          localWidth: constraints.maxWidth,
          localHeight: constraints.maxHeight,
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData: mediaQueryData),
        );
        return builder(context, deviceInfo);
      },
    );
  }
}
