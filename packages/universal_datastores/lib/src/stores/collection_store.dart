import 'dart:async';

import 'package:universal_datastores/universal_datastores.dart';

/// {@template collection_store}
/// Dart package which manages data stores are commonly used.
/// A Generic Collection Store Interface.
/// {@endtemplate}
abstract class CollectionStore {
  /// Requests initialize collection store.
  Future<void> initialize();

  /// Get collections size.
  /// Returns the total number of objects in this store
  int count();

  /// Requests insert or update collection.
  /// Returns the object has been inserted or updated,
  /// otherwise return null.
  ///
  /// Supported parameters:
  /// * [object] - The collection's data.
  Future<Collection?> putCollection(Collection object);

  /// Requests create collection.
  /// Returns the object has been created, otherwise return null.
  ///
  /// Supported parameters:
  /// * [name] - The collection's name (display name).
  /// * [data] - The collection's data.
  /// in the collection to return.
  Future<Collection?> createCollection({String? name, String? data});

  /// Requests delete a single collection by its [id].
  /// Returns the object has been deleted, otherwise return null.
  ///
  /// Supported parameters:
  /// * [id] - Collection id for which content is requested.
  Future<Collection?> deleteCollection(int id);

  /// Requests get a single collection by its [id].
  /// Returns null if the collection does not exist.
  ///
  /// Supported parameters:
  /// * [id] - Collection id for which content is requested.
  Future<Collection?> getCollection(int id);

  /// Requests collections content metadata.
  ///
  /// Supported parameters:
  /// * [preview] - Whether to return a preview of the collection.
  /// * [limit] - The number of results to return.
  /// * [offset] - The (zero-based) offset of the first item
  /// in the collection to return.
  Future<List<Collection>> getCollections({
    bool preview = false,
    int? limit,
    int? offset,
  });

  /// Requests watch collections content metadata.
  ///
  /// Supported parameters:
  /// * [preview] - Whether to return a preview of the collection.
  /// * [limit] - The number of results to return.
  /// * [offset] - The (zero-based) offset of the first item
  /// in the collection to return.
  Stream<List<Collection>?> watchCollections({
    bool preview = false,
    int? limit,
    int? offset,
  });

  /// Requests dispose collection store.
  Future<void> dispose();
}
