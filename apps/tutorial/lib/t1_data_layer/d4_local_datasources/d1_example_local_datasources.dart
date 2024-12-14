import 'package:change_application_name/application.dart';
import 'package:tutorial/tutorial.dart';

class ExampleLocalDataSources {
  ExampleLocalDataSources({
    ExampleAppLocalDatabase? database,
    AppSecureLocalDatabase? secureDatabase,
  })  : _database = database ?? ExampleAppLocalDatabase.instance,
        _secureDatabase = secureDatabase ?? AppSecureLocalDatabase.instance;

  final ExampleAppLocalDatabase _database;
  final AppSecureLocalDatabase _secureDatabase;

  Future<List<ExampleMovieTableData>> loadMovieList() =>
      _database.loadMovieList();

  Future<void> saveMovieList(Iterable<ExampleMovieTableData> dataList) =>
      _database.upsertMovieList(dataList);

  Future<void> saveToken({
    required String? token,
    required String? refreshToken,
  }) =>
      Future.wait([
        if (token.isNotNullOrBlank) _secureDatabase.saveToken(token!),
        if (refreshToken.isNotNullOrBlank)
          _secureDatabase.saveRefreshToken(refreshToken!),
      ]);
}
