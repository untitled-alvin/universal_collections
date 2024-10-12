// ignore_for_file: sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

part 'collection.g.dart';

/// {@template collection}
/// Collection model
/// {@endtemplate}
@collection
class Collection extends Equatable {
  /// {@macro collection}
  const Collection({
    required this.id,
    this.name,
    this.data,
  });

  /// The current collection's id.
  final int id;

  /// The current collection's name (display name).
  final String? name;

  /// Url for the current collection's data.
  final String? data;

  @override
  List<Object?> get props => [id, name, data];
}

/// Collection extension
extension CollectionX on Collection {
  // ignore: public_member_api_docs
  Collection copyWith({int? id, String? name, String? data}) {
    return Collection(
      id: id ?? this.id,
      name: name ?? this.name,
      data: data ?? this.data,
    );
  }
}
