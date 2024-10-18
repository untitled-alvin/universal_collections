import 'dart:async';

import 'package:universal_datastores/universal_datastores.dart';

/// {@template saved_store}
/// Dart package which manages data stores are commonly used.
/// A Generic Saved Store Interface.
/// {@endtemplate}
abstract class SavedStore {
  /// Requests initialize saved store.
  Future<void> initialize();

  /// Get collections size.
  /// Returns the total number of objects in this store

  int count();

  /// Requests insert or update saved.
  /// Returns the object has been inserted or updated,
  /// otherwise return null.
  ///
  /// Supported parameters:
  /// * [object] - The saved item's data.
  Future<SavedItem?> putItem(SavedItem object);

  /// Requests delete a single saved by its [id].
  /// Returns the object has been deleted, otherwise return null.
  ///
  /// Supported parameters:
  /// * [id] - saved id for which content is requested.
  Future<SavedItem?> deleteItem(int id);

  /// Requests get a single saved by its [id].
  /// Returns null if the saved does not exist.
  ///
  /// Supported parameters:
  /// * [id] - saved id for which content is requested.
  Future<SavedItem?> getItem(int id);

  /// Requests collections content metadata.
  ///
  /// Supported parameters:
  /// * [limit] - The number of results to return.
  /// * [offset] - The (zero-based) offset of the first item
  /// in the saved to return.
  Future<List<SavedItem>> getItems({int? limit, int? offset});

  /// Requests watch collections content metadata.
  ///
  /// Supported parameters:
  /// * [limit] - The number of results to return.
  /// * [offset] - The (zero-based) offset of the first item
  /// in the saved to return.
  Stream<List<SavedItem>?> watchItems({int? limit, int? offset});

  /// Requests dispose saved store.
  Future<void> dispose();
}
