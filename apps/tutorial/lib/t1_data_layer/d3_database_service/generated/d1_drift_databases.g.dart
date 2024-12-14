// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../d1_drift_databases.dart';

// ignore_for_file: type=lint
class $ExampleSettingTableTable extends ExampleSettingTable
    with TableInfo<$ExampleSettingTableTable, ExampleSettingTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExampleSettingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _themeModeMeta =
      const VerificationMeta('themeMode');
  @override
  late final GeneratedColumn<String> themeMode = GeneratedColumn<String>(
      'theme_mode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [themeMode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'example_setting_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ExampleSettingTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('theme_mode')) {
      context.handle(_themeModeMeta,
          themeMode.isAcceptableOrUnknown(data['theme_mode']!, _themeModeMeta));
    } else if (isInserting) {
      context.missing(_themeModeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ExampleSettingTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExampleSettingTableData(
      themeMode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}theme_mode'])!,
    );
  }

  @override
  $ExampleSettingTableTable createAlias(String alias) {
    return $ExampleSettingTableTable(attachedDatabase, alias);
  }
}

class ExampleSettingTableData extends DataClass
    implements Insertable<ExampleSettingTableData> {
  final String themeMode;
  const ExampleSettingTableData({required this.themeMode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['theme_mode'] = Variable<String>(themeMode);
    return map;
  }

  ExampleSettingTableCompanion toCompanion(bool nullToAbsent) {
    return ExampleSettingTableCompanion(
      themeMode: Value(themeMode),
    );
  }

  factory ExampleSettingTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExampleSettingTableData(
      themeMode: serializer.fromJson<String>(json['themeMode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'themeMode': serializer.toJson<String>(themeMode),
    };
  }

  ExampleSettingTableData copyWith({String? themeMode}) =>
      ExampleSettingTableData(
        themeMode: themeMode ?? this.themeMode,
      );
  ExampleSettingTableData copyWithCompanion(ExampleSettingTableCompanion data) {
    return ExampleSettingTableData(
      themeMode: data.themeMode.present ? data.themeMode.value : this.themeMode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExampleSettingTableData(')
          ..write('themeMode: $themeMode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => themeMode.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExampleSettingTableData && other.themeMode == this.themeMode);
}

class ExampleSettingTableCompanion
    extends UpdateCompanion<ExampleSettingTableData> {
  final Value<String> themeMode;
  final Value<int> rowid;
  const ExampleSettingTableCompanion({
    this.themeMode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExampleSettingTableCompanion.insert({
    required String themeMode,
    this.rowid = const Value.absent(),
  }) : themeMode = Value(themeMode);
  static Insertable<ExampleSettingTableData> custom({
    Expression<String>? themeMode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (themeMode != null) 'theme_mode': themeMode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ExampleSettingTableCompanion copyWith(
      {Value<String>? themeMode, Value<int>? rowid}) {
    return ExampleSettingTableCompanion(
      themeMode: themeMode ?? this.themeMode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (themeMode.present) {
      map['theme_mode'] = Variable<String>(themeMode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExampleSettingTableCompanion(')
          ..write('themeMode: $themeMode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ExampleMovieTableTable extends ExampleMovieTable
    with TableInfo<$ExampleMovieTableTable, ExampleMovieTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExampleMovieTableTable(this.attachedDatabase, [this._alias]);
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
  static const String $name = 'example_movie_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ExampleMovieTableData> instance,
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
  ExampleMovieTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExampleMovieTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $ExampleMovieTableTable createAlias(String alias) {
    return $ExampleMovieTableTable(attachedDatabase, alias);
  }
}

class ExampleMovieTableData extends DataClass
    implements Insertable<ExampleMovieTableData> {
  final String id;
  final String name;
  const ExampleMovieTableData({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  ExampleMovieTableCompanion toCompanion(bool nullToAbsent) {
    return ExampleMovieTableCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory ExampleMovieTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExampleMovieTableData(
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

  ExampleMovieTableData copyWith({String? id, String? name}) =>
      ExampleMovieTableData(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  ExampleMovieTableData copyWithCompanion(ExampleMovieTableCompanion data) {
    return ExampleMovieTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExampleMovieTableData(')
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
      (other is ExampleMovieTableData &&
          other.id == this.id &&
          other.name == this.name);
}

class ExampleMovieTableCompanion
    extends UpdateCompanion<ExampleMovieTableData> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> rowid;
  const ExampleMovieTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ExampleMovieTableCompanion.insert({
    required String id,
    required String name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name);
  static Insertable<ExampleMovieTableData> custom({
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

  ExampleMovieTableCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? rowid}) {
    return ExampleMovieTableCompanion(
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
    return (StringBuffer('ExampleMovieTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ExampleAppLocalDatabase extends GeneratedDatabase {
  _$ExampleAppLocalDatabase(QueryExecutor e) : super(e);
  $ExampleAppLocalDatabaseManager get managers =>
      $ExampleAppLocalDatabaseManager(this);
  late final $ExampleSettingTableTable exampleSettingTable =
      $ExampleSettingTableTable(this);
  late final $ExampleMovieTableTable exampleMovieTable =
      $ExampleMovieTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [exampleSettingTable, exampleMovieTable];
}

typedef $$ExampleSettingTableTableCreateCompanionBuilder
    = ExampleSettingTableCompanion Function({
  required String themeMode,
  Value<int> rowid,
});
typedef $$ExampleSettingTableTableUpdateCompanionBuilder
    = ExampleSettingTableCompanion Function({
  Value<String> themeMode,
  Value<int> rowid,
});

class $$ExampleSettingTableTableFilterComposer
    extends Composer<_$ExampleAppLocalDatabase, $ExampleSettingTableTable> {
  $$ExampleSettingTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get themeMode => $composableBuilder(
      column: $table.themeMode, builder: (column) => ColumnFilters(column));
}

class $$ExampleSettingTableTableOrderingComposer
    extends Composer<_$ExampleAppLocalDatabase, $ExampleSettingTableTable> {
  $$ExampleSettingTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get themeMode => $composableBuilder(
      column: $table.themeMode, builder: (column) => ColumnOrderings(column));
}

class $$ExampleSettingTableTableAnnotationComposer
    extends Composer<_$ExampleAppLocalDatabase, $ExampleSettingTableTable> {
  $$ExampleSettingTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get themeMode =>
      $composableBuilder(column: $table.themeMode, builder: (column) => column);
}

class $$ExampleSettingTableTableTableManager extends RootTableManager<
    _$ExampleAppLocalDatabase,
    $ExampleSettingTableTable,
    ExampleSettingTableData,
    $$ExampleSettingTableTableFilterComposer,
    $$ExampleSettingTableTableOrderingComposer,
    $$ExampleSettingTableTableAnnotationComposer,
    $$ExampleSettingTableTableCreateCompanionBuilder,
    $$ExampleSettingTableTableUpdateCompanionBuilder,
    (
      ExampleSettingTableData,
      BaseReferences<_$ExampleAppLocalDatabase, $ExampleSettingTableTable,
          ExampleSettingTableData>
    ),
    ExampleSettingTableData,
    PrefetchHooks Function()> {
  $$ExampleSettingTableTableTableManager(
      _$ExampleAppLocalDatabase db, $ExampleSettingTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExampleSettingTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExampleSettingTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExampleSettingTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> themeMode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ExampleSettingTableCompanion(
            themeMode: themeMode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String themeMode,
            Value<int> rowid = const Value.absent(),
          }) =>
              ExampleSettingTableCompanion.insert(
            themeMode: themeMode,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ExampleSettingTableTableProcessedTableManager = ProcessedTableManager<
    _$ExampleAppLocalDatabase,
    $ExampleSettingTableTable,
    ExampleSettingTableData,
    $$ExampleSettingTableTableFilterComposer,
    $$ExampleSettingTableTableOrderingComposer,
    $$ExampleSettingTableTableAnnotationComposer,
    $$ExampleSettingTableTableCreateCompanionBuilder,
    $$ExampleSettingTableTableUpdateCompanionBuilder,
    (
      ExampleSettingTableData,
      BaseReferences<_$ExampleAppLocalDatabase, $ExampleSettingTableTable,
          ExampleSettingTableData>
    ),
    ExampleSettingTableData,
    PrefetchHooks Function()>;
typedef $$ExampleMovieTableTableCreateCompanionBuilder
    = ExampleMovieTableCompanion Function({
  required String id,
  required String name,
  Value<int> rowid,
});
typedef $$ExampleMovieTableTableUpdateCompanionBuilder
    = ExampleMovieTableCompanion Function({
  Value<String> id,
  Value<String> name,
  Value<int> rowid,
});

class $$ExampleMovieTableTableFilterComposer
    extends Composer<_$ExampleAppLocalDatabase, $ExampleMovieTableTable> {
  $$ExampleMovieTableTableFilterComposer({
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

class $$ExampleMovieTableTableOrderingComposer
    extends Composer<_$ExampleAppLocalDatabase, $ExampleMovieTableTable> {
  $$ExampleMovieTableTableOrderingComposer({
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

class $$ExampleMovieTableTableAnnotationComposer
    extends Composer<_$ExampleAppLocalDatabase, $ExampleMovieTableTable> {
  $$ExampleMovieTableTableAnnotationComposer({
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

class $$ExampleMovieTableTableTableManager extends RootTableManager<
    _$ExampleAppLocalDatabase,
    $ExampleMovieTableTable,
    ExampleMovieTableData,
    $$ExampleMovieTableTableFilterComposer,
    $$ExampleMovieTableTableOrderingComposer,
    $$ExampleMovieTableTableAnnotationComposer,
    $$ExampleMovieTableTableCreateCompanionBuilder,
    $$ExampleMovieTableTableUpdateCompanionBuilder,
    (
      ExampleMovieTableData,
      BaseReferences<_$ExampleAppLocalDatabase, $ExampleMovieTableTable,
          ExampleMovieTableData>
    ),
    ExampleMovieTableData,
    PrefetchHooks Function()> {
  $$ExampleMovieTableTableTableManager(
      _$ExampleAppLocalDatabase db, $ExampleMovieTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExampleMovieTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExampleMovieTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExampleMovieTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ExampleMovieTableCompanion(
            id: id,
            name: name,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<int> rowid = const Value.absent(),
          }) =>
              ExampleMovieTableCompanion.insert(
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

typedef $$ExampleMovieTableTableProcessedTableManager = ProcessedTableManager<
    _$ExampleAppLocalDatabase,
    $ExampleMovieTableTable,
    ExampleMovieTableData,
    $$ExampleMovieTableTableFilterComposer,
    $$ExampleMovieTableTableOrderingComposer,
    $$ExampleMovieTableTableAnnotationComposer,
    $$ExampleMovieTableTableCreateCompanionBuilder,
    $$ExampleMovieTableTableUpdateCompanionBuilder,
    (
      ExampleMovieTableData,
      BaseReferences<_$ExampleAppLocalDatabase, $ExampleMovieTableTable,
          ExampleMovieTableData>
    ),
    ExampleMovieTableData,
    PrefetchHooks Function()>;

class $ExampleAppLocalDatabaseManager {
  final _$ExampleAppLocalDatabase _db;
  $ExampleAppLocalDatabaseManager(this._db);
  $$ExampleSettingTableTableTableManager get exampleSettingTable =>
      $$ExampleSettingTableTableTableManager(_db, _db.exampleSettingTable);
  $$ExampleMovieTableTableTableManager get exampleMovieTable =>
      $$ExampleMovieTableTableTableManager(_db, _db.exampleMovieTable);
}
