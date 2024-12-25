import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences cacheHelper;

  static Future<void> initialCacheHelper() async {
    cacheHelper = await SharedPreferences.getInstance();
  }

  static Future<void> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is int) {
      await cacheHelper.setInt(key, value);
    } else if (value is double) {
      await cacheHelper.setDouble(key, value);
    } else if (value is String) {
      await cacheHelper.setString(key, value);
    } else if (value is bool) {
      await cacheHelper.setBool(key, value);
    } else {
      debugPrint('value is not string, bool, int or double.');
    }
  }

  static Future<dynamic> getData({required String key})async{
    return cacheHelper.get(key);
  }
  static Future<String?> getString({required String key})async{
    return cacheHelper.getString(key);
  }
  static Future<bool?> getBool({required String key})async{
    return cacheHelper.getBool(key);
  }
  static Future<int?> getInt({required String key})async{
    return cacheHelper.getInt(key);
  }
  static Future<double?> getDouble({required String key})async{
    return cacheHelper.getDouble(key);
  }

  static Future<bool> removeData({required String key})async{
    return await cacheHelper.remove(key);
  }
}
