import 'package:shared_preferences/shared_preferences.dart';

class CacheNetwork {
  static late SharedPreferences sharedPref;

  static Future cacheInitialization() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  // set  ( key , value ) from user
  static Future<bool> insertToCache(
      {required String key, required String value}) async {
    return await sharedPref.setString(key, value);
  }

// get (key,value)
  static Future<String?> getCacheData({required String key}) async {
    return sharedPref.getString(key);
  }

  static Future<bool> deleteCacheItem({required String key}) async {
    return await sharedPref.remove(key);
  }

}

