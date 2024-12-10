import 'package:core/core.dart' as Core;
import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

export 'key_value_database.dart';
export 'firestore_database_service.dart';

part 'generated/databases.g.dart';

class SettingTable extends Table {
  TextColumn get themeMode => text()();

  BoolColumn get exited => boolean().withDefault(const Constant(false))();

  ///========================= APPLICATION =========================///
// TextColumn get homeViewType => text().withDefault(const Constant('slide'))();
//
// TextColumn get selectTikabitId => text()();
}

@DriftDatabase(tables: [SettingTable])
class AppLocalDatabase extends _$AppLocalDatabase {
  AppLocalDatabase(super.e);

  static late final AppLocalDatabase instance;

  @override
  int get schemaVersion => 1;

  // @override
  // MigrationStrategy get migration => MigrationStrategy(
  //   onCreate: (Migrator m) async {
  //     await m.createAll();
  //   },
  //   onUpgrade: (Migrator m, int from, int to) async {
  //     if (from < 2) {
  //       // Migrate Version: 2
  //       // await m.addColumn(
  //       //     instance.settingTable, instance.settingTable.exited);
  //     }
  //   },
  // );

  static void initDatabase({AppLocalDatabase? database}) {
    instance = database ??
        AppLocalDatabase(
          driftDatabase(
            name: 'change_application_name_database',
            web: DriftWebOptions(
              sqlite3Wasm: Uri.parse('sqlite3.wasm'),
              driftWorker: Uri.parse('drift_worker.js'),
              onResult: (result) {
                if (result.missingFeatures.isNotEmpty) {
                  Core.Log.t(
                      'Using ${result.chosenImplementation} due to unsupported '
                      'browser features: ${result.missingFeatures}');
                }
              },
            ),
          ),
        );
  }

  static Future<SettingTableData> loadSetting() async {
    List<SettingTableData> settingList =
        await AppLocalDatabase.instance.managers.settingTable.get();
    if (settingList.isEmpty) {
      await AppLocalDatabase.instance.managers.settingTable.create(
        (o) => o(
          themeMode: Core.ThemeMode.system.toValueString(),
        ),
      );
      settingList = await AppLocalDatabase.instance.managers.settingTable.get();
    }
    return settingList.first;
  }
}
