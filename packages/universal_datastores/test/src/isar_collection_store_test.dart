// ignore_for_file: prefer_const_constructors, cascade_invocations
import 'package:isar/isar.dart' hide Collection;
import 'package:test/test.dart';
import 'package:universal_datastores/universal_datastores.dart';

// class FakeFolder extends Fake implements Folder {}

void main() {
  group('IsarCollectionStore', () {
    /* cspell: disable */
    const library = 'libisar_macos.dylib';
    const schemas = [CollectionSchema];
    const directory = '';
    // const directory = Isar.sqliteInMemory;

    late CollectionStore store;
    late Isar isar;

    setUpAll(() async {
      await Isar.initialize(library);
      isar = Isar.open(schemas: schemas, directory: directory);
      isar.write((isar) => isar.collections.clear());
      store = IsarCollectionStore(isar: isar);
      await store.initialize();
    });

    tearDownAll(() async {
      isar.write((isar) => isar.clear());
      isar.close(deleteFromDisk: true);
      await store.dispose();
    });

    group('watchCollections', () {
      final objects = <Collection>[
        Collection(id: 1, name: 'n1', data: 'd1'),
        Collection(id: 2, name: 'n2', data: 'd2'),
        Collection(id: 3, name: 'n3', data: 'd3'),
      ];

      setUp(() {
        isar.write((isar) => isar.collections.putAll(objects));
      });

      tearDown(() {
        isar.write((isar) => isar.collections.clear());
      });

      test(
          'given IsarCollection unempty '
          'when call watchCollections '
          'then listen collections change', () {
        expectLater(store.watchCollections(offset: 2), emits(isEmpty));
        expectLater(store.watchCollections(), emits(isEmpty));
        expectLater(store.watchCollections(limit: 10), emits(isEmpty));

        isar.write((isar) => isar.collections.clear());
      });
    });

    group('getCollections', () {
      final objects = <Collection>[
        Collection(id: 1, name: 'n1', data: 'd1'),
        Collection(id: 2, name: 'n2', data: 'd2'),
        Collection(id: 3, name: 'n3', data: 'd3'),
      ];

      setUp(() {
        isar.write((isar) => isar.collections.putAll(objects));
      });

      tearDown(() {
        isar.write((isar) => isar.collections.clear());
      });

      test(
          'given IsarCollection empty '
          'when call getCollections '
          'then return empty', () async {
        isar.write((isar) => isar.collections.clear());
        expect(await store.getCollections(offset: 2), isEmpty);
        expect(await store.getCollections(), isEmpty);
        expect(await store.getCollections(limit: 10), isEmpty);
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'then return collections succeeds', () async {
        final actual = await store.getCollections();
        expect(actual, equals(objects));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'with [limit] < IsarCollection length '
          'then return collections have length match [limit] ', () async {
        const limit = 2;
        final actual = await store.getCollections(limit: limit);
        expect(actual.length, equals(limit));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'with [limit] > IsarCollection length '
          'then return collections have length match [limit] ', () async {
        const limit = 1;
        final resonse = await store.getCollections(limit: limit);
        expect(resonse.length, equals(limit));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'with [offset] < IsarCollection length '
          'then return collections from [offset]', () async {
        const offset = 2;
        final actual = await store.getCollections(offset: offset);
        expect(actual.first, equals(objects[offset]));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'with [offset] >= IsarCollection length '
          'then return empty collections', () async {
        expect(await store.getCollections(offset: 3), isEmpty);
        expect(await store.getCollections(offset: 4), isEmpty);
      });
    });

    group('updateCollection', () {
      const objId = 1;
      final testObj = Collection(id: objId, name: '_n', data: '_d');
      final testObj2 = Collection(id: objId);

      setUp(() {
        isar.write((isar) => isar.collections.put(testObj));
      });

      tearDown(() {
        isar.write((isar) => isar.collections.clear());
      });

      test('return collection when update collection succeeds', () async {
        final resonse = await store.putCollection(testObj2);
        expect(resonse, equals(testObj2));
      });

      test(
          'IsarCollection update succeeds '
          'when call IsarCollectionStore.putCollection', () async {
        final resonse = await store.putCollection(testObj2);
        final isarObj = isar.read((isar) => isar.collections.get(objId));
        final count = isar.read((isar) => isar.collections.count());

        // expect
        expect(resonse, equals(testObj2));
        expect(isarObj, equals(resonse));
        expect(count, equals(1));
      });
    });

    group('insertCollection', () {
      final testObj = Collection(id: 1, name: '_n', data: '_d');

      setUp(() {
        isar.write((isar) => isar.collections.clear());
      });

      tearDown(() {
        isar.write((isar) => isar.collections.clear());
      });

      test('return collection when insert collection succeeds', () async {
        final resonse = await store.putCollection(testObj);
        expect(resonse, equals(testObj));
      });

      test(
          'IsarCollection insert succeeds '
          'when call IsarCollectionStore.putCollection', () async {
        final resonse = await store.putCollection(testObj);
        final count = isar.read((isar) => isar.collections.count());
        expect(resonse, equals(testObj));
        expect(count, equals(1));
      });
    });

    group('createCollection', () {
      test('return collection when create collection succeeds', () async {
        // given
        const name = 'name1';
        const data = 'data1';

        // when
        final actual = await store.createCollection(name: name, data: data);

        // then
        expect(actual, isA<Collection>());
        expect(actual!.name, equals(name));
        expect(actual.data, equals(data));
      });
    });

    group('count', () {
      final objects = List.generate(3, (i) => Collection(id: i));

      setUp(() {
        isar.write((isar) => isar.collections.putAll(objects));
      });

      tearDown(() {
        isar.write((isar) => isar.collections.clear());
      });

      test('returns exactly collections length', () {
        final response = store.count();
        expect(response, equals(objects.length));
      });

      test('returns 0 when collections store empty', () {
        isar.write((isar) => isar.collections.clear());
        final count = store.count();
        expect(count, equals(0));
      });
    });

    group('dispose', () {
      test('can be dispose', () {
        expect(store.dispose, returnsNormally);
      });
    });

    group('initialize', () {
      test('can be initialize', () {
        expect(store.initialize, returnsNormally);
      });
    });

    group('instantiated', () {
      test('can be instantiated', () {
        expect(IsarCollectionStore(isar: isar), isNotNull);
      });
    });
  });
}
