import 'package:arestro/core/utils/enums/device_type.dart';
import 'package:arestro/core/utils/functions/get_device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class DeviceHelper{
  static late final double width ;
  static late final double height ;
  static late final Orientation orientation ;
  static late final DeviceType deviceType ;

  static void initialDeviceHelper({required MediaQueryData mediaQueryData}){
    width = mediaQueryData.size.width;
    height = mediaQueryData.size.height;
    orientation = mediaQueryData.orientation;
    deviceType = getDeviceType(mediaQueryData: mediaQueryData);
  }

}