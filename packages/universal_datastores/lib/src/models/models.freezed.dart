// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedItem {
  /// The current saved item's id.
  int get id => throw _privateConstructorUsedError;

  /// Url for the current collection's data.
  int get parentId => throw _privateConstructorUsedError;

  /// Url for the current collection's data.
  String? get data => throw _privateConstructorUsedError;

  /// Create a copy of SavedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedItemCopyWith<SavedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedItemCopyWith<$Res> {
  factory $SavedItemCopyWith(SavedItem value, $Res Function(SavedItem) then) =
      _$SavedItemCopyWithImpl<$Res, SavedItem>;
  @useResult
  $Res call({int id, int parentId, String? data});
}

/// @nodoc
class _$SavedItemCopyWithImpl<$Res, $Val extends SavedItem>
    implements $SavedItemCopyWith<$Res> {
  _$SavedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedItemImplCopyWith<$Res>
    implements $SavedItemCopyWith<$Res> {
  factory _$$SavedItemImplCopyWith(
          _$SavedItemImpl value, $Res Function(_$SavedItemImpl) then) =
      __$$SavedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int parentId, String? data});
}

/// @nodoc
class __$$SavedItemImplCopyWithImpl<$Res>
    extends _$SavedItemCopyWithImpl<$Res, _$SavedItemImpl>
    implements _$$SavedItemImplCopyWith<$Res> {
  __$$SavedItemImplCopyWithImpl(
      _$SavedItemImpl _value, $Res Function(_$SavedItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? data = freezed,
  }) {
    return _then(_$SavedItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SavedItemImpl implements _SavedItem {
  const _$SavedItemImpl({required this.id, required this.parentId, this.data});

  /// The current saved item's id.
  @override
  final int id;

  /// Url for the current collection's data.
  @override
  final int parentId;

  /// Url for the current collection's data.
  @override
  final String? data;

  @override
  String toString() {
    return 'SavedItem(id: $id, parentId: $parentId, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, parentId, data);

  /// Create a copy of SavedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedItemImplCopyWith<_$SavedItemImpl> get copyWith =>
      __$$SavedItemImplCopyWithImpl<_$SavedItemImpl>(this, _$identity);
}

abstract class _SavedItem implements SavedItem {
  const factory _SavedItem(
      {required final int id,
      required final int parentId,
      final String? data}) = _$SavedItemImpl;

  /// The current saved item's id.
  @override
  int get id;

  /// Url for the current collection's data.
  @override
  int get parentId;

  /// Url for the current collection's data.
  @override
  String? get data;

  /// Create a copy of SavedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedItemImplCopyWith<_$SavedItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavedCollection {
  /// The current collection's id.
  int get id => throw _privateConstructorUsedError;

  /// The current collection's name (display name).
  String? get name => throw _privateConstructorUsedError;

  /// Url for the current collection's data.
  String? get data => throw _privateConstructorUsedError;

  /// Create a copy of SavedCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavedCollectionCopyWith<SavedCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedCollectionCopyWith<$Res> {
  factory $SavedCollectionCopyWith(
          SavedCollection value, $Res Function(SavedCollection) then) =
      _$SavedCollectionCopyWithImpl<$Res, SavedCollection>;
  @useResult
  $Res call({int id, String? name, String? data});
}

/// @nodoc
class _$SavedCollectionCopyWithImpl<$Res, $Val extends SavedCollection>
    implements $SavedCollectionCopyWith<$Res> {
  _$SavedCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavedCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedCollectionImplCopyWith<$Res>
    implements $SavedCollectionCopyWith<$Res> {
  factory _$$SavedCollectionImplCopyWith(_$SavedCollectionImpl value,
          $Res Function(_$SavedCollectionImpl) then) =
      __$$SavedCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? data});
}

/// @nodoc
class __$$SavedCollectionImplCopyWithImpl<$Res>
    extends _$SavedCollectionCopyWithImpl<$Res, _$SavedCollectionImpl>
    implements _$$SavedCollectionImplCopyWith<$Res> {
  __$$SavedCollectionImplCopyWithImpl(
      _$SavedCollectionImpl _value, $Res Function(_$SavedCollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavedCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SavedCollectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SavedCollectionImpl implements _SavedCollection {
  const _$SavedCollectionImpl({required this.id, this.name, this.data});

  /// The current collection's id.
  @override
  final int id;

  /// The current collection's name (display name).
  @override
  final String? name;

  /// Url for the current collection's data.
  @override
  final String? data;

  @override
  String toString() {
    return 'SavedCollection(id: $id, name: $name, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedCollectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, data);

  /// Create a copy of SavedCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedCollectionImplCopyWith<_$SavedCollectionImpl> get copyWith =>
      __$$SavedCollectionImplCopyWithImpl<_$SavedCollectionImpl>(
          this, _$identity);
}

abstract class _SavedCollection implements SavedCollection {
  const factory _SavedCollection(
      {required final int id,
      final String? name,
      final String? data}) = _$SavedCollectionImpl;

  /// The current collection's id.
  @override
  int get id;

  /// The current collection's name (display name).
  @override
  String? get name;

  /// Url for the current collection's data.
  @override
  String? get data;

  /// Create a copy of SavedCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavedCollectionImplCopyWith<_$SavedCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CollectionLink {
  /// The current collection's id.
  int get id => throw _privateConstructorUsedError;

  /// Url for the current collection's data.
  int get collectionId => throw _privateConstructorUsedError;

  /// Url for the current saved's data.
  int get savedId => throw _privateConstructorUsedError;

  /// Create a copy of CollectionLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionLinkCopyWith<CollectionLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionLinkCopyWith<$Res> {
  factory $CollectionLinkCopyWith(
          CollectionLink value, $Res Function(CollectionLink) then) =
      _$CollectionLinkCopyWithImpl<$Res, CollectionLink>;
  @useResult
  $Res call({int id, int collectionId, int savedId});
}

/// @nodoc
class _$CollectionLinkCopyWithImpl<$Res, $Val extends CollectionLink>
    implements $CollectionLinkCopyWith<$Res> {
  _$CollectionLinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? savedId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      savedId: null == savedId
          ? _value.savedId
          : savedId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionLinkImplCopyWith<$Res>
    implements $CollectionLinkCopyWith<$Res> {
  factory _$$CollectionLinkImplCopyWith(_$CollectionLinkImpl value,
          $Res Function(_$CollectionLinkImpl) then) =
      __$$CollectionLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int collectionId, int savedId});
}

/// @nodoc
class __$$CollectionLinkImplCopyWithImpl<$Res>
    extends _$CollectionLinkCopyWithImpl<$Res, _$CollectionLinkImpl>
    implements _$$CollectionLinkImplCopyWith<$Res> {
  __$$CollectionLinkImplCopyWithImpl(
      _$CollectionLinkImpl _value, $Res Function(_$CollectionLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionLink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = null,
    Object? savedId = null,
  }) {
    return _then(_$CollectionLinkImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      collectionId: null == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      savedId: null == savedId
          ? _value.savedId
          : savedId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CollectionLinkImpl implements _CollectionLink {
  const _$CollectionLinkImpl(
      {required this.id, required this.collectionId, required this.savedId});

  /// The current collection's id.
  @override
  final int id;

  /// Url for the current collection's data.
  @override
  final int collectionId;

  /// Url for the current saved's data.
  @override
  final int savedId;

  @override
  String toString() {
    return 'CollectionLink(id: $id, collectionId: $collectionId, savedId: $savedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionLinkImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.savedId, savedId) || other.savedId == savedId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, savedId);

  /// Create a copy of CollectionLink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionLinkImplCopyWith<_$CollectionLinkImpl> get copyWith =>
      __$$CollectionLinkImplCopyWithImpl<_$CollectionLinkImpl>(
          this, _$identity);
}

abstract class _CollectionLink implements CollectionLink {
  const factory _CollectionLink(
      {required final int id,
      required final int collectionId,
      required final int savedId}) = _$CollectionLinkImpl;

  /// The current collection's id.
  @override
  int get id;

  /// Url for the current collection's data.
  @override
  int get collectionId;

  /// Url for the current saved's data.
  @override
  int get savedId;

  /// Create a copy of CollectionLink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionLinkImplCopyWith<_$CollectionLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
