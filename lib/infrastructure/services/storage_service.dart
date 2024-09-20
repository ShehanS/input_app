import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class StorageService {
  late FlutterSecureStorage _flutterSecureStorage;

  StorageService() {
    _flutterSecureStorage = const FlutterSecureStorage();
  }

  Future<void> setValue(String key, dynamic value) async {
    await _flutterSecureStorage.write(key: key, value: value);
  }

  Future<String?> getValue(String key) async {
    return await _flutterSecureStorage.read(key: key);
  }
}
