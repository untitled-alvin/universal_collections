// ignore_for_file: prefer_const_constructors, cascade_invocations
import 'package:isar/isar.dart' hide Collection;
import 'package:test/test.dart';
import 'package:universal_datastores/universal_datastores.dart';

// class FakeFolder extends Fake implements Folder {}

void main() {
  group('IsarSavedStore', () {
    /* cspell: disable */
    const library = 'libisar_macos.dylib';
    const schemas = [
      SavedCollectionSchema,
      SavedItemSchema,
      CollectionLinkSchema,
    ];
    const directory = '';
    // const directory = Isar.sqliteInMemory;

    late IsarSavedStore store;
    late Isar isar;

    setUpAll(() async {
      await Isar.initialize(library);
      isar = Isar.open(schemas: schemas, directory: directory);
      isar.write((isar) => isar.collections.clear());
      store = IsarSavedStore(isar: isar);
      await store.initialize();
    });

    tearDownAll(() async {
      isar.write((isar) => isar.clear());
      isar.close(deleteFromDisk: true);
      await store.dispose();
    });

    group('watchCollections', () {
      final objects = [
        SavedCollection(id: 1, data: 'd1'),
        SavedCollection(id: 2, data: 'd2'),
        SavedCollection(id: 3, data: 'd3'),
      ];

      setUp(() => isar.write((isar) => isar.collections.clear()));

      tearDown(() => isar.write((isar) => isar.collections.clear()));

      test(
          'given IsarCollection unempty '
          'when call watchCollections '
          'then listen items change', () {
        expectLater(store.watchCollections(offset: 2), emitsInOrder([isEmpty]));
        expectLater(store.watchCollections(), emitsInOrder([isEmpty]));
        expectLater(store.watchCollections(limit: 10), emitsInOrder([isEmpty]));
        isar.write((isar) => isar.collections.putAll(objects));
        isar.write((isar) => isar.collections.clear());
      });
    });

    group('clearCollections', () {
      final items = [
        SavedItem(id: 1, parentId: 11, data: 'd1'),
        SavedItem(id: 2, parentId: 12, data: 'd2'),
        SavedItem(id: 3, parentId: 13, data: 'd3'),
      ];
      final collections = [
        SavedCollection(id: 1, data: 'd1'),
        SavedCollection(id: 2, data: 'd2'),
        SavedCollection(id: 3, data: 'd3'),
      ];

      final links = [
        CollectionLink(id: 1, collectionId: 1, savedId: 1),
        CollectionLink(id: 2, collectionId: 1, savedId: 2),
        CollectionLink(id: 3, collectionId: 1, savedId: 3),
      ];

      setUp(() => isar.write((isar) => isar.collections.clear()));

      tearDown(() => isar.write((isar) => isar.collections.clear()));

      test(
          'given IsarCollection unempty '
          'when call clearCollections '
          'then listen items change', () async {
        isar.write((isar) {
          isar.items.putAll(items);
          isar.collections.putAll(collections);
          isar.collection_links.putAll(links);
        });
        await store.clearAllCollections();
        expect(isar.read((isar) => isar.collection_links.count()), equals(0));
        expect(isar.read((isar) => isar.collections.count()), equals(0));
      });
    });

    //
    group('watchItems', () {
      final objects = [
        SavedItem(id: 1, parentId: 11, data: 'd1'),
        SavedItem(id: 2, parentId: 12, data: 'd2'),
        SavedItem(id: 3, parentId: 13, data: 'd3'),
      ];

      setUp(() => isar.write((isar) => isar.items.clear()));

      tearDown(() => isar.write((isar) => isar.items.clear()));

      test(
          'given IsarCollection unempty '
          'when call watchItems '
          'then listen items change', () {
        expectLater(store.watchItems(offset: 2), emitsInOrder([isEmpty]));
        expectLater(store.watchItems(), emitsInOrder([isEmpty]));
        expectLater(store.watchItems(limit: 10), emitsInOrder([isEmpty]));
        isar.write((isar) => isar.items.putAll(objects));
        isar.write((isar) => isar.items.clear());
      });
    });

    group('getCollections', () {
      final objects = [
        SavedItem(id: 1, parentId: 11, data: 'd1'),
        SavedItem(id: 2, parentId: 12, data: 'd2'),
        SavedItem(id: 3, parentId: 13, data: 'd3'),
      ];

      setUp(() => isar.write((isar) => isar.items.putAll(objects)));

      tearDown(() => isar.write((isar) => isar.items.clear()));

      test(
          'given IsarCollection empty '
          'when call getCollections '
          'then return empty', () async {
        isar.write((isar) => isar.items.clear());
        expect(await store.getItems(offset: 2), isEmpty);
        expect(await store.getItems(), isEmpty);
        expect(await store.getItems(limit: 10), isEmpty);
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'then return items succeeds', () async {
        expect(await store.getItems(), equals(objects));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'with [limit] < IsarCollection length '
          'then return items have length match [limit] ', () async {
        const limit = 2;
        final actual = await store.getItems(limit: limit);
        expect(actual.length, equals(limit));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections '
          'with [limit] > IsarCollection length '
          'then return items have length match [limit] ', () async {
        const limit = 1;
        final resonse = await store.getItems(limit: limit);
        expect(resonse.length, equals(limit));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections with [offset] < IsarCollection length '
          'then return items from [offset]', () async {
        const offset = 2;
        final actual = await store.getItems(offset: offset);
        expect(actual.first, equals(objects[offset]));
      });

      test(
          'given IsarCollection unempty '
          'when call getCollections with [offset] >= IsarCollection length '
          'then return empty items', () async {
        expect(await store.getItems(offset: 3), isEmpty);
        expect(await store.getItems(offset: 4), isEmpty);
      });
    });

    group('updateCollection', () {
      const objId = 1;
      final testObj = SavedItem(id: objId, parentId: 11, data: '_d');
      final testObj2 = SavedItem(id: objId, parentId: 11);

      setUp(() => isar.write((isar) => isar.items.put(testObj)));

      tearDown(() => isar.write((isar) => isar.items.clear()));

      test('return collection when update collection succeeds', () async {
        final resonse = await store.putItem(testObj2);
        expect(resonse, equals(testObj2));
      });

      test(
          'IsarCollection update succeeds '
          'when call IsarSavedStore.putCollection', () async {
        final resonse = await store.putItem(testObj2);
        final isarObj = isar.read((isar) => isar.items.get(objId));
        final count = isar.read((isar) => isar.items.count());

        // expect
        expect(resonse, equals(testObj2));
        expect(isarObj, equals(resonse));
        expect(count, equals(1));
      });
    });

    group('insertCollection', () {
      final testObj = SavedItem(id: 1, parentId: 11, data: 'd1');

      setUp(() => isar.write((isar) => isar.items.clear()));

      tearDown(() => isar.write((isar) => isar.items.clear()));

      test('return collection when insert collection succeeds', () async {
        final resonse = await store.putItem(testObj);
        expect(resonse, equals(testObj));
      });

      test(
          'IsarCollection insert succeeds '
          'when call IsarSavedStore.putCollection', () async {
        final resonse = await store.putItem(testObj);
        final count = isar.read((isar) => isar.collections.count());
        expect(resonse, equals(testObj));
        expect(count, equals(1));
      });
    });

    // group('createCollection', () {
    //   test('return collection when create collection succeeds', () async {
    //     // given
    //     const name = 'name1';
    //     const data = 'data1';

    //     // when
    //     final actual = await store.createCollection(name: name, data: data);

    //     // then
    //     expect(actual, isA<SavedCollection>());
    //     expect(actual!.name, equals(name));
    //     expect(actual.data, equals(data));
    //   });
    // });

    group('count', () {
      final objects = List.generate(3, (i) => SavedCollection(id: i));

      setUp(() => isar.write((isar) => isar.collections.putAll(objects)));

      tearDown(() => isar.write((isar) => isar.collections.clear()));

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
        expect(IsarSavedStore(isar: isar), isNotNull);
      });
    });
  });
}
