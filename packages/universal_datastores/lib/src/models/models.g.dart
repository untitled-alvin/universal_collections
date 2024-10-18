// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetSavedItemCollection on Isar {
  IsarCollection<int, SavedItem> get items => this.collection();
}

const SavedItemSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'SavedItem',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'parentId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'data',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, SavedItem>(
    serialize: serializeSavedItem,
    deserialize: deserializeSavedItem,
    deserializeProperty: deserializeSavedItemProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeSavedItem(IsarWriter writer, SavedItem object) {
  IsarCore.writeLong(writer, 1, object.parentId);
  {
    final value = object.data;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  return object.id;
}

@isarProtected
SavedItem deserializeSavedItem(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _parentId;
  _parentId = IsarCore.readLong(reader, 1);
  final String? _data;
  _data = IsarCore.readString(reader, 2);
  final object = SavedItem(
    id: _id,
    parentId: _parentId,
    data: _data,
  );
  return object;
}

@isarProtected
dynamic deserializeSavedItemProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _SavedItemUpdate {
  bool call({
    required int id,
    int? parentId,
    String? data,
  });
}

class _SavedItemUpdateImpl implements _SavedItemUpdate {
  const _SavedItemUpdateImpl(this.collection);

  final IsarCollection<int, SavedItem> collection;

  @override
  bool call({
    required int id,
    Object? parentId = ignore,
    Object? data = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (parentId != ignore) 1: parentId as int?,
          if (data != ignore) 2: data as String?,
        }) >
        0;
  }
}

sealed class _SavedItemUpdateAll {
  int call({
    required List<int> id,
    int? parentId,
    String? data,
  });
}

class _SavedItemUpdateAllImpl implements _SavedItemUpdateAll {
  const _SavedItemUpdateAllImpl(this.collection);

  final IsarCollection<int, SavedItem> collection;

  @override
  int call({
    required List<int> id,
    Object? parentId = ignore,
    Object? data = ignore,
  }) {
    return collection.updateProperties(id, {
      if (parentId != ignore) 1: parentId as int?,
      if (data != ignore) 2: data as String?,
    });
  }
}

extension SavedItemUpdate on IsarCollection<int, SavedItem> {
  _SavedItemUpdate get update => _SavedItemUpdateImpl(this);

  _SavedItemUpdateAll get updateAll => _SavedItemUpdateAllImpl(this);
}

sealed class _SavedItemQueryUpdate {
  int call({
    int? parentId,
    String? data,
  });
}

class _SavedItemQueryUpdateImpl implements _SavedItemQueryUpdate {
  const _SavedItemQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<SavedItem> query;
  final int? limit;

  @override
  int call({
    Object? parentId = ignore,
    Object? data = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (parentId != ignore) 1: parentId as int?,
      if (data != ignore) 2: data as String?,
    });
  }
}

extension SavedItemQueryUpdate on IsarQuery<SavedItem> {
  _SavedItemQueryUpdate get updateFirst =>
      _SavedItemQueryUpdateImpl(this, limit: 1);

  _SavedItemQueryUpdate get updateAll => _SavedItemQueryUpdateImpl(this);
}

class _SavedItemQueryBuilderUpdateImpl implements _SavedItemQueryUpdate {
  const _SavedItemQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<SavedItem, SavedItem, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? parentId = ignore,
    Object? data = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (parentId != ignore) 1: parentId as int?,
        if (data != ignore) 2: data as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension SavedItemQueryBuilderUpdate
    on QueryBuilder<SavedItem, SavedItem, QOperations> {
  _SavedItemQueryUpdate get updateFirst =>
      _SavedItemQueryBuilderUpdateImpl(this, limit: 1);

  _SavedItemQueryUpdate get updateAll => _SavedItemQueryBuilderUpdateImpl(this);
}

extension SavedItemQueryFilter
    on QueryBuilder<SavedItem, SavedItem, QFilterCondition> {
  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> parentIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> parentIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition>
      parentIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> parentIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition>
      parentIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> parentIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition>
      dataGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition>
      dataLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterFilterCondition> dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }
}

extension SavedItemQueryObject
    on QueryBuilder<SavedItem, SavedItem, QFilterCondition> {}

extension SavedItemQuerySortBy on QueryBuilder<SavedItem, SavedItem, QSortBy> {
  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> sortByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> sortByDataDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension SavedItemQuerySortThenBy
    on QueryBuilder<SavedItem, SavedItem, QSortThenBy> {
  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> thenByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterSortBy> thenByDataDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension SavedItemQueryWhereDistinct
    on QueryBuilder<SavedItem, SavedItem, QDistinct> {
  QueryBuilder<SavedItem, SavedItem, QAfterDistinct> distinctByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<SavedItem, SavedItem, QAfterDistinct> distinctByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }
}

extension SavedItemQueryProperty1
    on QueryBuilder<SavedItem, SavedItem, QProperty> {
  QueryBuilder<SavedItem, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SavedItem, int, QAfterProperty> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SavedItem, String?, QAfterProperty> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SavedItemQueryProperty2<R>
    on QueryBuilder<SavedItem, R, QAfterProperty> {
  QueryBuilder<SavedItem, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SavedItem, (R, int), QAfterProperty> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SavedItem, (R, String?), QAfterProperty> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SavedItemQueryProperty3<R1, R2>
    on QueryBuilder<SavedItem, (R1, R2), QAfterProperty> {
  QueryBuilder<SavedItem, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SavedItem, (R1, R2, int), QOperations> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SavedItem, (R1, R2, String?), QOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetSavedCollectionCollection on Isar {
  IsarCollection<int, SavedCollection> get collections => this.collection();
}

const SavedCollectionSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'SavedCollection',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'name',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'data',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, SavedCollection>(
    serialize: serializeSavedCollection,
    deserialize: deserializeSavedCollection,
    deserializeProperty: deserializeSavedCollectionProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeSavedCollection(IsarWriter writer, SavedCollection object) {
  {
    final value = object.name;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.data;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  return object.id;
}

@isarProtected
SavedCollection deserializeSavedCollection(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String? _name;
  _name = IsarCore.readString(reader, 1);
  final String? _data;
  _data = IsarCore.readString(reader, 2);
  final object = SavedCollection(
    id: _id,
    name: _name,
    data: _data,
  );
  return object;
}

@isarProtected
dynamic deserializeSavedCollectionProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _SavedCollectionUpdate {
  bool call({
    required int id,
    String? name,
    String? data,
  });
}

class _SavedCollectionUpdateImpl implements _SavedCollectionUpdate {
  const _SavedCollectionUpdateImpl(this.collection);

  final IsarCollection<int, SavedCollection> collection;

  @override
  bool call({
    required int id,
    Object? name = ignore,
    Object? data = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (name != ignore) 1: name as String?,
          if (data != ignore) 2: data as String?,
        }) >
        0;
  }
}

sealed class _SavedCollectionUpdateAll {
  int call({
    required List<int> id,
    String? name,
    String? data,
  });
}

class _SavedCollectionUpdateAllImpl implements _SavedCollectionUpdateAll {
  const _SavedCollectionUpdateAllImpl(this.collection);

  final IsarCollection<int, SavedCollection> collection;

  @override
  int call({
    required List<int> id,
    Object? name = ignore,
    Object? data = ignore,
  }) {
    return collection.updateProperties(id, {
      if (name != ignore) 1: name as String?,
      if (data != ignore) 2: data as String?,
    });
  }
}

extension SavedCollectionUpdate on IsarCollection<int, SavedCollection> {
  _SavedCollectionUpdate get update => _SavedCollectionUpdateImpl(this);

  _SavedCollectionUpdateAll get updateAll =>
      _SavedCollectionUpdateAllImpl(this);
}

sealed class _SavedCollectionQueryUpdate {
  int call({
    String? name,
    String? data,
  });
}

class _SavedCollectionQueryUpdateImpl implements _SavedCollectionQueryUpdate {
  const _SavedCollectionQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<SavedCollection> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? data = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (name != ignore) 1: name as String?,
      if (data != ignore) 2: data as String?,
    });
  }
}

extension SavedCollectionQueryUpdate on IsarQuery<SavedCollection> {
  _SavedCollectionQueryUpdate get updateFirst =>
      _SavedCollectionQueryUpdateImpl(this, limit: 1);

  _SavedCollectionQueryUpdate get updateAll =>
      _SavedCollectionQueryUpdateImpl(this);
}

class _SavedCollectionQueryBuilderUpdateImpl
    implements _SavedCollectionQueryUpdate {
  const _SavedCollectionQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<SavedCollection, SavedCollection, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? name = ignore,
    Object? data = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (name != ignore) 1: name as String?,
        if (data != ignore) 2: data as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension SavedCollectionQueryBuilderUpdate
    on QueryBuilder<SavedCollection, SavedCollection, QOperations> {
  _SavedCollectionQueryUpdate get updateFirst =>
      _SavedCollectionQueryBuilderUpdateImpl(this, limit: 1);

  _SavedCollectionQueryUpdate get updateAll =>
      _SavedCollectionQueryBuilderUpdateImpl(this);
}

extension SavedCollectionQueryFilter
    on QueryBuilder<SavedCollection, SavedCollection, QFilterCondition> {
  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterFilterCondition>
      dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }
}

extension SavedCollectionQueryObject
    on QueryBuilder<SavedCollection, SavedCollection, QFilterCondition> {}

extension SavedCollectionQuerySortBy
    on QueryBuilder<SavedCollection, SavedCollection, QSortBy> {
  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> sortByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> sortByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> sortByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> sortByDataDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension SavedCollectionQuerySortThenBy
    on QueryBuilder<SavedCollection, SavedCollection, QSortThenBy> {
  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> thenByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> thenByNameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> thenByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterSortBy> thenByDataDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension SavedCollectionQueryWhereDistinct
    on QueryBuilder<SavedCollection, SavedCollection, QDistinct> {
  QueryBuilder<SavedCollection, SavedCollection, QAfterDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SavedCollection, SavedCollection, QAfterDistinct> distinctByData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }
}

extension SavedCollectionQueryProperty1
    on QueryBuilder<SavedCollection, SavedCollection, QProperty> {
  QueryBuilder<SavedCollection, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SavedCollection, String?, QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SavedCollection, String?, QAfterProperty> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SavedCollectionQueryProperty2<R>
    on QueryBuilder<SavedCollection, R, QAfterProperty> {
  QueryBuilder<SavedCollection, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SavedCollection, (R, String?), QAfterProperty> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SavedCollection, (R, String?), QAfterProperty> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension SavedCollectionQueryProperty3<R1, R2>
    on QueryBuilder<SavedCollection, (R1, R2), QAfterProperty> {
  QueryBuilder<SavedCollection, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<SavedCollection, (R1, R2, String?), QOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<SavedCollection, (R1, R2, String?), QOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetCollectionLinkCollection on Isar {
  IsarCollection<int, CollectionLink> get collection_links => this.collection();
}

const CollectionLinkSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'CollectionLink',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'collectionId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'savedId',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, CollectionLink>(
    serialize: serializeCollectionLink,
    deserialize: deserializeCollectionLink,
    deserializeProperty: deserializeCollectionLinkProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeCollectionLink(IsarWriter writer, CollectionLink object) {
  IsarCore.writeLong(writer, 1, object.collectionId);
  IsarCore.writeLong(writer, 2, object.savedId);
  return object.id;
}

@isarProtected
CollectionLink deserializeCollectionLink(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _collectionId;
  _collectionId = IsarCore.readLong(reader, 1);
  final int _savedId;
  _savedId = IsarCore.readLong(reader, 2);
  final object = CollectionLink(
    id: _id,
    collectionId: _collectionId,
    savedId: _savedId,
  );
  return object;
}

@isarProtected
dynamic deserializeCollectionLinkProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readLong(reader, 2);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _CollectionLinkUpdate {
  bool call({
    required int id,
    int? collectionId,
    int? savedId,
  });
}

class _CollectionLinkUpdateImpl implements _CollectionLinkUpdate {
  const _CollectionLinkUpdateImpl(this.collection);

  final IsarCollection<int, CollectionLink> collection;

  @override
  bool call({
    required int id,
    Object? collectionId = ignore,
    Object? savedId = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (collectionId != ignore) 1: collectionId as int?,
          if (savedId != ignore) 2: savedId as int?,
        }) >
        0;
  }
}

sealed class _CollectionLinkUpdateAll {
  int call({
    required List<int> id,
    int? collectionId,
    int? savedId,
  });
}

class _CollectionLinkUpdateAllImpl implements _CollectionLinkUpdateAll {
  const _CollectionLinkUpdateAllImpl(this.collection);

  final IsarCollection<int, CollectionLink> collection;

  @override
  int call({
    required List<int> id,
    Object? collectionId = ignore,
    Object? savedId = ignore,
  }) {
    return collection.updateProperties(id, {
      if (collectionId != ignore) 1: collectionId as int?,
      if (savedId != ignore) 2: savedId as int?,
    });
  }
}

extension CollectionLinkUpdate on IsarCollection<int, CollectionLink> {
  _CollectionLinkUpdate get update => _CollectionLinkUpdateImpl(this);

  _CollectionLinkUpdateAll get updateAll => _CollectionLinkUpdateAllImpl(this);
}

sealed class _CollectionLinkQueryUpdate {
  int call({
    int? collectionId,
    int? savedId,
  });
}

class _CollectionLinkQueryUpdateImpl implements _CollectionLinkQueryUpdate {
  const _CollectionLinkQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<CollectionLink> query;
  final int? limit;

  @override
  int call({
    Object? collectionId = ignore,
    Object? savedId = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (collectionId != ignore) 1: collectionId as int?,
      if (savedId != ignore) 2: savedId as int?,
    });
  }
}

extension CollectionLinkQueryUpdate on IsarQuery<CollectionLink> {
  _CollectionLinkQueryUpdate get updateFirst =>
      _CollectionLinkQueryUpdateImpl(this, limit: 1);

  _CollectionLinkQueryUpdate get updateAll =>
      _CollectionLinkQueryUpdateImpl(this);
}

class _CollectionLinkQueryBuilderUpdateImpl
    implements _CollectionLinkQueryUpdate {
  const _CollectionLinkQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<CollectionLink, CollectionLink, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? collectionId = ignore,
    Object? savedId = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (collectionId != ignore) 1: collectionId as int?,
        if (savedId != ignore) 2: savedId as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension CollectionLinkQueryBuilderUpdate
    on QueryBuilder<CollectionLink, CollectionLink, QOperations> {
  _CollectionLinkQueryUpdate get updateFirst =>
      _CollectionLinkQueryBuilderUpdateImpl(this, limit: 1);

  _CollectionLinkQueryUpdate get updateAll =>
      _CollectionLinkQueryBuilderUpdateImpl(this);
}

extension CollectionLinkQueryFilter
    on QueryBuilder<CollectionLink, CollectionLink, QFilterCondition> {
  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      collectionIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      collectionIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      collectionIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      collectionIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      collectionIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      collectionIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      savedIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      savedIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      savedIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      savedIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      savedIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterFilterCondition>
      savedIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension CollectionLinkQueryObject
    on QueryBuilder<CollectionLink, CollectionLink, QFilterCondition> {}

extension CollectionLinkQuerySortBy
    on QueryBuilder<CollectionLink, CollectionLink, QSortBy> {
  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy>
      sortByCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy>
      sortByCollectionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy> sortBySavedId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy>
      sortBySavedIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension CollectionLinkQuerySortThenBy
    on QueryBuilder<CollectionLink, CollectionLink, QSortThenBy> {
  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy>
      thenByCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy>
      thenByCollectionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy> thenBySavedId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterSortBy>
      thenBySavedIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension CollectionLinkQueryWhereDistinct
    on QueryBuilder<CollectionLink, CollectionLink, QDistinct> {
  QueryBuilder<CollectionLink, CollectionLink, QAfterDistinct>
      distinctByCollectionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<CollectionLink, CollectionLink, QAfterDistinct>
      distinctBySavedId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension CollectionLinkQueryProperty1
    on QueryBuilder<CollectionLink, CollectionLink, QProperty> {
  QueryBuilder<CollectionLink, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CollectionLink, int, QAfterProperty> collectionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CollectionLink, int, QAfterProperty> savedIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension CollectionLinkQueryProperty2<R>
    on QueryBuilder<CollectionLink, R, QAfterProperty> {
  QueryBuilder<CollectionLink, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CollectionLink, (R, int), QAfterProperty>
      collectionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CollectionLink, (R, int), QAfterProperty> savedIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension CollectionLinkQueryProperty3<R1, R2>
    on QueryBuilder<CollectionLink, (R1, R2), QAfterProperty> {
  QueryBuilder<CollectionLink, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CollectionLink, (R1, R2, int), QOperations>
      collectionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CollectionLink, (R1, R2, int), QOperations> savedIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}
