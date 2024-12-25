import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class EncryptedCacheHelper {
  static late var storage;

  static void initialEncryptedCacheHelper() {
    storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
  }

  static Future<void> writeData({
    required String key,
    required dynamic value,
  }) async {
    await storage.write(key, value);
  }

  static Future<dynamic> readData({required String key}) async {
    await storage.read(key);
  }

  static Future<Map<String, dynamic>> readAllData() async {
    return await storage.readAll();
  }

  static Future<void> deleteData({required String key}) async {
    await storage.delete(key);
  }

  static Future<void> deleteAllData() async {
    await storage.deleteAll();
  }
}
