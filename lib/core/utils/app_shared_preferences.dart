import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class AppPreferences {
  static final AppPreferences _instance = AppPreferences._internal();
  late SharedPreferences _prefs;

  factory AppPreferences() {
    return _instance;
  }

  AppPreferences._internal();

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

   Future<void> setData(String key, dynamic value) async {
    if (value is String) {
      await _prefs.setString(key, value);
    } else if (value is int) {
      await _prefs.setInt(key, value);
    } else if (value is double) {
      await _prefs.setDouble(key, value);
    } else if (value is bool) {
      await _prefs.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(key, value);
    } else {
      throw Exception("Unsupported data type");
    }
  }

  dynamic getData(String key) {
    return _prefs.get(key);
  }

  Future<void> removeData(String key) async {
    await _prefs.remove(key);
  }

  Future<void> saveModel<T>(
      String key, T model, Map<String, dynamic> Function(T) toJson) async {
    final String jsonString = jsonEncode(toJson(model));
    await _prefs.setString(key, jsonString);
  }

  T? getModel<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    final String? jsonString = _prefs.getString(key);
    if (jsonString != null) {
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return fromJson(jsonMap);
    }
    return null;
  }

  Future<void> saveModels<T>(String key, List<T> models,
      Map<String, dynamic> Function(T) toJson) async {
    final List<String> jsonList =
        models.map((model) => jsonEncode(toJson(model))).toList();
    await _prefs.setStringList(key, jsonList);
  }

  List<T> getModels<T>(String key, T Function(Map<String, dynamic>) fromJson) {
    final List<String>? jsonList = _prefs.getStringList(key);
    if (jsonList != null) {
      return jsonList.map((json) => fromJson(jsonDecode(json))).toList();
    }
    return [];
  }


}
