import 'package:arestro/core/utils/enums/device_type.dart';
import 'package:flutter/material.dart';

DeviceType getDeviceType({required MediaQueryData mediaQueryData}){
  double width  =0;
  if(mediaQueryData.orientation == Orientation.landscape){
    width = mediaQueryData.size.height;
  }else if(mediaQueryData.orientation == Orientation.portrait){
    width = mediaQueryData.size.width;
  }

  if(width>=950){
    return DeviceType.Desktop;
  }else if(width >=600){
    return DeviceType.Tablet;
  }else{
    return DeviceType.Mobile;
  }

}