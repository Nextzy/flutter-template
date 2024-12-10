import 'package:data/lib.dart';

class AppSecureLocalDatabase {
  static const tokenKey = 'tokenKey';
  static const refreshTokenKey = 'refreshTokenKey';
  final SecureStorage _secureStorage;

  static const AppSecureLocalDatabase instance =
      AppSecureLocalDatabase._singleton();

  const AppSecureLocalDatabase._singleton(
      {SecureStorage secureStorage = SecureStorage.instance})
      : _secureStorage = secureStorage;

  Future<String?> loadToken() => load(tokenKey);

  Future<String?> loadRefreshToken() => load(refreshTokenKey);

  Future<void> save(String key, {required String data}) =>
      _secureStorage.save(key, data: data);

  Future<String?> load(String key) => _secureStorage.load(key);

  Future<Map<String, String>> loadAll() => _secureStorage.loadAll();

  Future<String> loadSafe(String key, {required String defaultData}) =>
      _secureStorage.loadSafe(key, defaultData: defaultData);

  Future<void> delete({required String key}) => _secureStorage.delete(key: key);

  Future<void> deleteAll() => _secureStorage.deleteAll();
}
