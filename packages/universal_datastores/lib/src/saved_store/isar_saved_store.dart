// ignore_for_file: public_member_api_docs

import 'dart:async';

import 'package:isar/isar.dart' hide Collection;
import 'package:universal_datastores/universal_datastores.dart';

/// {@template isar_collection_store}
/// A Generic Collection Store implements using Isar.
/// {@endtemplate}
class IsarSavedStore implements SavedStore {
  /// {@macro isar_collection_store}
  IsarSavedStore({
    required Isar isar,
  }) : _isar = isar;

  final Isar _isar;

  /// Create an asynchronous read-write transaction.
  /// The code inside the callback will be executed in a separate isolate.
  T write<T>(T Function(Isar) callback) => _isar.write(callback);

  /// Create a synchronous read transaction.
  /// Explicit read transactions are optional,
  /// but they allow you to do atomic reads and rely
  /// on a consistent state of the database inside the transaction.
  /// Internally Isar always uses implicit read transactions
  /// for all read operations.
  /// It is recommended to use an explicit read transactions
  /// when you want to perform multiple subsequent read operations.
  T read<T>(T Function(Isar) callback) => _isar.read(callback);

  @override
  Future<void> initialize() async {
    if (_isar.isOpen) return;
  }

  @override
  int count() => read((isar) => isar.items.count());

  @override
  Future<SavedItem?> getItem(int id) async {
    return read((isar) => isar.items.get(id));
  }

  @override
  Future<SavedItem?> putItem(SavedItem object) async {
    write((isar) => isar.items.put(object));
    return _isar.items.get(object.id);
  }

  @override
  Future<SavedItem?> deleteItem(int id) async {
    return write((isar) {
      final item = isar.items.get(id);

      final existed = item != null;
      if (!existed) return null;

      final deleted = isar.items.delete(id);
      if (!deleted) return null;

      return item;
    });
  }

  @override
  Future<List<SavedItem>> getItems({int? limit, int? offset}) async {
    return read((isar) {
      return isar.items.where().build().findAll(offset: offset, limit: limit);
    });
  }

  @override
  Stream<List<SavedItem>?> watchItems({int? limit, int? offset}) {
    return read((isar) {
      return isar.items.where().build().watch(offset: offset, limit: limit);
    });
  }

  Future<void> clearAll() async {
    return write((isar) {
      isar.collection_links.clear();
      isar.collections.clear();
      isar.items.clear();
    });
  }

  int countCollections() => read((isar) => isar.collections.count());

  Future<SavedCollection?> putCollection(SavedCollection object) async {
    write((isar) => isar.collections.put(object));
    return _isar.collections.get(object.id);
  }

  Future<SavedCollection?> deleteCollection(int id) async {
    return write((isar) {
      final collection = isar.collections.get(id);

      final existed = collection != null;
      if (!existed) return null;

      final deleted = isar.collections.delete(id);
      if (!deleted) return null;

      isar.collection_links.where().collectionIdEqualTo(id).deleteAll();

      return collection;
    });
  }

  Stream<List<SavedCollection>?> watchCollections({int? limit, int? offset}) {
    return read((isar) {
      return isar.collections
          .where()
          .build()
          .watch(offset: offset, limit: limit);
    });
  }

  Future<void> clearAllCollections() async {
    return write((isar) {
      isar.collection_links.clear();
      isar.collections.clear();
    });
  }

  int countCollectionLinks(int collectionId) {
    return read((isar) {
      return isar.collection_links
          .where()
          .collectionIdEqualTo(collectionId)
          .count();
    });
  }

  Future<void> putCollectionLinks(List<CollectionLink> objects) async {
    return write((isar) {
      return isar.collection_links.putAll(objects);
    });
  }

  Future<int> deleteCollectionLinks(List<int> ids) async {
    return write((isar) {
      return isar.collection_links.deleteAll(ids);
    });
  }

  Stream<List<SavedItem?>> watchCollectionItems({
    required int collectionId,
    int? limit,
    int? offset,
  }) {
    return read((isar) {
      return isar.collection_links
          .where()
          .collectionIdEqualTo(collectionId)
          .build()
          .watch(offset: offset, limit: limit)
          .map((links) => links.map((e) => e.savedId).toList())
          .map((ids) => isar.items.getAll(ids))
          .map((items) => items..removeWhere((item) => item != null));
    });
  }

  @override
  Future<void> dispose() async {}
}
