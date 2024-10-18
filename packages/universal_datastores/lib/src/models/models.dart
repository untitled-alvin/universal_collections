import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'models.g.dart';
part 'models.freezed.dart';

/// {@template collection}
/// Saved Item model
/// {@endtemplate}
@Freezed(fromJson: false)
@Collection(accessor: 'items')
class SavedItem with _$SavedItem {
  /// {@macro saved_item}
  const factory SavedItem({
    /// The current saved item's id.
    required int id,

    /// Url for the current collection's data.
    required int parentId,

    /// Url for the current collection's data.
    String? data,
  }) = _SavedItem;
}

/// {@template collection}
/// Collection model
/// {@endtemplate}
@Freezed(fromJson: false)
@Collection(accessor: 'collections')
class SavedCollection with _$SavedCollection {
  /// {@macro collection}
  const factory SavedCollection({
    /// The current collection's id.
    required int id,

    /// The current collection's name (display name).
    String? name,

    /// Url for the current collection's data.
    String? data,

    /// Url for the current collection's data.
    // IsarLink<SavedItem>? children,
  }) = _SavedCollection;
}

/// {@template collection}
/// Collection model
/// {@endtemplate}
@Freezed(fromJson: false)
@Collection(accessor: 'collection_links')
class CollectionLink with _$CollectionLink {
  /// {@macro collection}
  const factory CollectionLink({
    /// The current collection's id.
    required int id,

    /// Url for the current collection's data.
    required int collectionId,

    /// Url for the current saved's data.
    required int savedId,
  }) = _CollectionLink;
}
