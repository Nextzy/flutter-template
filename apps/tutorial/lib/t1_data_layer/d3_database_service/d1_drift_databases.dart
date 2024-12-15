import 'package:change_application_name/application.dart' as core;
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'generated/d1_drift_databases.g.dart';

class ExampleSettingTable extends Table {
  TextColumn get themeMode => text()();
}

/// ⭐️ Create database for MovieList
/// 1. Create upsert MovieList method
/// 2. Create upsert Movie method
/// 3. Create load MovieList method
/// 4. Create load Movie by ID method
class ExampleMovieTable extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(tables: [ExampleSettingTable, ExampleMovieTable])
class ExampleAppLocalDatabase extends _$ExampleAppLocalDatabase {
  ExampleAppLocalDatabase(super.e);

  static late final ExampleAppLocalDatabase instance;

  @override
  int get schemaVersion => 1;

  /// ⚠️ Very important part if you don't migrate the new version app will crash
  /// when you open !!!
  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {
          if (from < 2) {
            // Migrate Version: 2
            // await m.addColumn(
            //     instance.settingTable, instance.settingTable.exited);
          }
        },
      );

  static void initDatabase({ExampleAppLocalDatabase? database}) {
    instance = database ??
        ExampleAppLocalDatabase(
          driftDatabase(
            name: 'change_application_name_database',
            web: DriftWebOptions(
              sqlite3Wasm: Uri.parse('sqlite3.wasm'),
              driftWorker: Uri.parse('drift_worker.js'),
              onResult: (result) {
                if (result.missingFeatures.isNotEmpty) {
                  core.Log.t(
                      'Using ${result.chosenImplementation} due to unsupported '
                      'browser features: ${result.missingFeatures}');
                }
              },
            ),
          ),
        );
  }

  static Future<ExampleSettingTableData> loadSetting() async {
    List<ExampleSettingTableData> settingList = await ExampleAppLocalDatabase
        .instance.managers.exampleSettingTable
        .get();
    if (settingList.isEmpty) {
      await ExampleAppLocalDatabase.instance.managers.exampleSettingTable
          .create(
        (o) => o(
          themeMode: core.ThemeMode.system.toValueString(),
        ),
      );
      settingList = await ExampleAppLocalDatabase
          .instance.managers.exampleSettingTable
          .get();
    }
    return settingList.first;
  }

  Future<void> deleteAllData() => transaction(() async {
        for (final table in allTables) {
          await customStatement('DELETE FROM ${table.actualTableName}');
        }
      });


  ///=============== CRUD Method =====================///
  /// ⭐️ Create upsert for MovieList
  Future<void> upsertMovieList(
    Iterable<ExampleMovieTableData> dataList,
  ) => batch(
      (batch) {
        batch.insertAllOnConflictUpdate(
          exampleMovieTable,
          dataList.map(
            (data) => ExampleMovieTableCompanion.insert(
              id: data.id,
              name: data.name,
            ),
          ),
        );
      },
    );

  /// ⭐️ Create upsert for Movie
  Future<void> upsertMovie(ExampleMovieTableData data) =>
      into(exampleMovieTable).insertOnConflictUpdate(
        ExampleMovieTableCompanion.insert(
          id: data.id,
          name: data.name,
        ),
      );

  /// ⭐️ Create load for MovieList
  Future<List<ExampleMovieTableData>> loadMovieList() =>
      managers.exampleMovieTable.get();

  /// ⭐️ Create load for Movie by ID
  Future<ExampleMovieTableData?> loadMovie(String id) =>
      (select(exampleMovieTable)..where((tbl) => tbl.id.equals(id)))
          .getSingleOrNull();
}
