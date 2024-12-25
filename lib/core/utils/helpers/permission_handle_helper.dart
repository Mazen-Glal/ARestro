import 'package:permission_handler/permission_handler.dart';
class PermissionHandleHelper{
  static Future<bool> checkPermission({required Permission permission})async{
    PermissionStatus permissionStatus = await permission.status;
    if(permissionStatus.isDenied){
      permissionStatus = await permission.request();
      return statusIsGranted(permissionStatus);
    }else if(permissionStatus.isPermanentlyDenied){
      await openAppSettings();
      permissionStatus = await permission.status;
      return statusIsGranted(permissionStatus);
    }else{
      return true;
    }
  }

  static bool statusIsGranted(PermissionStatus permissionStatus) {
    if(permissionStatus.isGranted){
      return true;
    }else{
      return false;
    }
  }
}