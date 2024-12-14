// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../databases.dart';

// ignore_for_file: type=lint
class $SettingTableTable extends SettingTable
    with TableInfo<$SettingTableTable, SettingTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _themeModeMeta =
      const VerificationMeta('themeMode');
  @override
  late final GeneratedColumn<String> themeMode = GeneratedColumn<String>(
      'theme_mode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _exitedMeta = const VerificationMeta('exited');
  @override
  late final GeneratedColumn<bool> exited = GeneratedColumn<bool>(
      'exited', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("exited" IN (0, 1))'),
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [themeMode, exited];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'setting_table';
  @override
  VerificationContext validateIntegrity(Insertable<SettingTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('theme_mode')) {
      context.handle(_themeModeMeta,
          themeMode.isAcceptableOrUnknown(data['theme_mode']!, _themeModeMeta));
    } else if (isInserting) {
      context.missing(_themeModeMeta);
    }
    if (data.containsKey('exited')) {
      context.handle(_exitedMeta,
          exited.isAcceptableOrUnknown(data['exited']!, _exitedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SettingTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingTableData(
      themeMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}theme_mode'])!,
      exited: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}exited'])!,
    );
  }

  @override
  $SettingTableTable createAlias(String alias) {
    return $SettingTableTable(attachedDatabase, alias);
  }
}

class SettingTableData extends DataClass
    implements Insertable<SettingTableData> {
  final String themeMode;
  final bool exited;
  const SettingTableData({required this.themeMode, required this.exited});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['theme_mode'] = Variable<String>(themeMode);
    map['exited'] = Variable<bool>(exited);
    return map;
  }

  SettingTableCompanion toCompanion(bool nullToAbsent) {
    return SettingTableCompanion(
      themeMode: Value(themeMode),
      exited: Value(exited),
    );
  }

  factory SettingTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingTableData(
      themeMode: serializer.fromJson<String>(json['themeMode']),
      exited: serializer.fromJson<bool>(json['exited']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'themeMode': serializer.toJson<String>(themeMode),
      'exited': serializer.toJson<bool>(exited),
    };
  }

  SettingTableData copyWith({String? themeMode, bool? exited}) =>
      SettingTableData(
        themeMode: themeMode ?? this.themeMode,
        exited: exited ?? this.exited,
      );
  SettingTableData copyWithCompanion(SettingTableCompanion data) {
    return SettingTableData(
      themeMode: data.themeMode.present ? data.themeMode.value : this.themeMode,
      exited: data.exited.present ? data.exited.value : this.exited,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingTableData(')
          ..write('themeMode: $themeMode, ')
          ..write('exited: $exited')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(themeMode, exited);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingTableData &&
          other.themeMode == this.themeMode &&
          other.exited == this.exited);
}

class SettingTableCompanion extends UpdateCompanion<SettingTableData> {
  final Value<String> themeMode;
  final Value<bool> exited;
  final Value<int> rowid;
  const SettingTableCompanion({
    this.themeMode = const Value.absent(),
    this.exited = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingTableCompanion.insert({
    required String themeMode,
    this.exited = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : themeMode = Value(themeMode);
  static Insertable<SettingTableData> custom({
    Expression<String>? themeMode,
    Expression<bool>? exited,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (themeMode != null) 'theme_mode': themeMode,
      if (exited != null) 'exited': exited,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingTableCompanion copyWith(
      {Value<String>? themeMode, Value<bool>? exited, Value<int>? rowid}) {
    return SettingTableCompanion(
      themeMode: themeMode ?? this.themeMode,
      exited: exited ?? this.exited,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (themeMode.present) {
      map['theme_mode'] = Variable<String>(themeMode.value);
    }
    if (exited.present) {
      map['exited'] = Variable<bool>(exited.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingTableCompanion(')
          ..write('themeMode: $themeMode, ')
          ..write('exited: $exited, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MovieTableTable extends MovieTable
    with TableInfo<$MovieTableTable, MovieTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovieTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'movie_table';
  @override
  VerificationContext validateIntegrity(Insertable<MovieTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MovieTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MovieTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $MovieTableTable createAlias(String alias) {
    return $MovieTableTable(attachedDatabase, alias);
  }
}

class MovieTableData extends DataClass implements Insertable<MovieTableData> {
  final String id;
  final String name;
  const MovieTableData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  MovieTableCompanion toCompanion(bool nullToAbsent) {
    return MovieTableCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory MovieTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovieTableData(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  MovieTableData copyWith({String? id, String? name}) => MovieTableData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  MovieTableData copyWithCompanion(MovieTableCompanion data) {
    return MovieTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovieTableData &&
          other.id == this.id &&
          other.name == this.name);
}

class MovieTableCompanion extends UpdateCompanion<MovieTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const MovieTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MovieTableCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<MovieTableData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MovieTableCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return MovieTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovieTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppLocalDatabase extends GeneratedDatabase {
  _$AppLocalDatabase(QueryExecutor e) : super(e);
  $AppLocalDatabaseManager get managers => $AppLocalDatabaseManager(this);
  late final $SettingTableTable settingTable = $SettingTableTable(this);
  late final $MovieTableTable movieTable = $MovieTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [settingTable, movieTable];
}

typedef $$SettingTableTableCreateCompanionBuilder = SettingTableCompanion
    Function({
  required String themeMode,
  Value<bool> exited,
  Value<int> rowid,
});
typedef $$SettingTableTableUpdateCompanionBuilder = SettingTableCompanion
    Function({
  Value<String> themeMode,
  Value<bool> exited,
  Value<int> rowid,
});

class $$SettingTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $SettingTableTable> {
  $$SettingTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get themeMode => $composableBuilder(
      column: $table.themeMode, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get exited => $composableBuilder(
      column: $table.exited, builder: (column) => ColumnFilters(column));
}

class $$SettingTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $SettingTableTable> {
  $$SettingTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get themeMode => $composableBuilder(
      column: $table.themeMode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get exited => $composableBuilder(
      column: $table.exited, builder: (column) => ColumnOrderings(column));
}

class $$SettingTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $SettingTableTable> {
  $$SettingTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get themeMode =>
      $composableBuilder(column: $table.themeMode, builder: (column) => column);

  GeneratedColumn<bool> get exited =>
      $composableBuilder(column: $table.exited, builder: (column) => column);
}

class $$SettingTableTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $SettingTableTable,
    SettingTableData,
    $$SettingTableTableFilterComposer,
    $$SettingTableTableOrderingComposer,
    $$SettingTableTableAnnotationComposer,
    $$SettingTableTableCreateCompanionBuilder,
    $$SettingTableTableUpdateCompanionBuilder,
    (
      SettingTableData,
      BaseReferences<_$AppLocalDatabase, $SettingTableTable, SettingTableData>
    ),
    SettingTableData,
    PrefetchHooks Function()> {
  $$SettingTableTableTableManager(
      _$AppLocalDatabase db, $SettingTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> themeMode = const Value.absent(),
            Value<bool> exited = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingTableCompanion(
            themeMode: themeMode,
            exited: exited,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String themeMode,
            Value<bool> exited = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SettingTableCompanion.insert(
            themeMode: themeMode,
            exited: exited,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SettingTableTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $SettingTableTable,
    SettingTableData,
    $$SettingTableTableFilterComposer,
    $$SettingTableTableOrderingComposer,
    $$SettingTableTableAnnotationComposer,
    $$SettingTableTableCreateCompanionBuilder,
    $$SettingTableTableUpdateCompanionBuilder,
    (
      SettingTableData,
      BaseReferences<_$AppLocalDatabase, $SettingTableTable, SettingTableData>
    ),
    SettingTableData,
    PrefetchHooks Function()>;
typedef $$MovieTableTableCreateCompanionBuilder = MovieTableCompanion Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$MovieTableTableUpdateCompanionBuilder = MovieTableCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

class $$MovieTableTableFilterComposer
    extends Composer<_$AppLocalDatabase, $MovieTableTable> {
  $$MovieTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));
}

class $$MovieTableTableOrderingComposer
    extends Composer<_$AppLocalDatabase, $MovieTableTable> {
  $$MovieTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$MovieTableTableAnnotationComposer
    extends Composer<_$AppLocalDatabase, $MovieTableTable> {
  $$MovieTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);
}

class $$MovieTableTableTableManager extends RootTableManager<
    _$AppLocalDatabase,
    $MovieTableTable,
    MovieTableData,
    $$MovieTableTableFilterComposer,
    $$MovieTableTableOrderingComposer,
    $$MovieTableTableAnnotationComposer,
    $$MovieTableTableCreateCompanionBuilder,
    $$MovieTableTableUpdateCompanionBuilder,
    (
      MovieTableData,
      BaseReferences<_$AppLocalDatabase, $MovieTableTable, MovieTableData>
    ),
    MovieTableData,
    PrefetchHooks Function()> {
  $$MovieTableTableTableManager(_$AppLocalDatabase db, $MovieTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MovieTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MovieTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MovieTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MovieTableCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              MovieTableCompanion.insert(
            id: id,
            name: name,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MovieTableTableProcessedTableManager = ProcessedTableManager<
    _$AppLocalDatabase,
    $MovieTableTable,
    MovieTableData,
    $$MovieTableTableFilterComposer,
    $$MovieTableTableOrderingComposer,
    $$MovieTableTableAnnotationComposer,
    $$MovieTableTableCreateCompanionBuilder,
    $$MovieTableTableUpdateCompanionBuilder,
    (
      MovieTableData,
      BaseReferences<_$AppLocalDatabase, $MovieTableTable, MovieTableData>
    ),
    MovieTableData,
    PrefetchHooks Function()>;

class $AppLocalDatabaseManager {
  final _$AppLocalDatabase _db;
  $AppLocalDatabaseManager(this._db);
  $$SettingTableTableTableManager get settingTable =>
      $$SettingTableTableTableManager(_db, _db.settingTable);
  $$MovieTableTableTableManager get movieTable =>
      $$MovieTableTableTableManager(_db, _db.movieTable);
}
