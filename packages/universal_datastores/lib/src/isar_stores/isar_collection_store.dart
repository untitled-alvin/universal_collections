// ignore_for_file: require_trailing_commas

import 'dart:async';

import 'package:isar/isar.dart' hide Collection;
import 'package:universal_datastores/universal_datastores.dart';

/// {@template isar_collection_store}
/// A Generic Collection Store implements using Isar.
/// {@endtemplate}
class IsarCollectionStore implements CollectionStore {
  /// {@macro isar_collection_store}
  IsarCollectionStore({
    required Isar isar,
  }) : _isar = isar;

  final Isar _isar;

  /// Create a synchronous read transaction.
  /// Explicit read transactions are optional,
  /// but they allow you to do atomic reads and rely
  /// on a consistent state of the database inside the transaction.
  /// Internally Isar always uses implicit read transactions
  /// for all read operations.
  /// It is recommended to use an explicit read transactions
  /// when you want to perform multiple subsequent read operations.
  T read<T>(T Function(Isar) callback) => _isar.read(callback);

  /// Create an asynchronous read-write transaction.
  /// The code inside the callback will be executed in a separate isolate.
  T write<T>(T Function(Isar) callback) => _isar.write(callback);

  @override
  Future<void> initialize() async {}

  @override
  int count() => read((isar) => isar.collections.count());

  @override
  Future<Collection?> getCollection(int id) async {
    return read((isar) => isar.collections.get(id));
  }

  @override
  Future<Collection?> putCollection(Collection object) async {
    write((isar) => isar.collections.put(object));
    return _isar.collections.get(object.id);
  }

  @override
  Future<Collection?> createCollection({String? name, String? data}) async {
    final result = write((isar) {
      final id = isar.collections.autoIncrement();
      final object = Collection(id: id, name: name, data: data);
      isar.collections.put(object);
      return object;
    });

    return _isar.collections.get(result.id);
  }

  @override
  Future<Collection?> deleteCollection(int id) async {
    return write((isar) {
      final object = isar.collections.get(id);

      final isExist = object != null;
      if (!isExist) return null;

      final deleted = isar.collections.delete(id);
      if (!deleted) return null;

      return object;
    });
  }

  @override
  Future<List<Collection>> getCollections(
      {bool preview = false, int? limit, int? offset}) async {
    return read((isar) {
      return isar.collections
          .where()
          .build()
          .findAll(offset: offset, limit: limit);
    });
  }

  @override
  Stream<List<Collection>?> watchCollections(
      {bool preview = false, int? limit, int? offset}) {
    return read((isar) {
      return isar.collections
          .where()
          .build()
          .watch(offset: offset, limit: limit);
    });
  }

  // @override
  // Stream<List<Collection>?> watchCollections(
  //     {bool preview = false, int? limit, int? offset}) async* {
  //   final query = _isar.collections.where().build();
  //   await for (final results in query.watch(offset: offset, limit: limit)) {
  //     yield results;
  //   }
  // }

  @override
  Future<void> dispose() async {}
}
