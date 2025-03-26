import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'model.g.dart';

@JsonSerializable()
class RepositoryQueryResult extends Equatable {
  final int maxIndex;
  final List<Repository> items;

  const RepositoryQueryResult({required this.maxIndex, required this.items});

  @override
  List<Object?> get props => [maxIndex, items];
}

@JsonSerializable()
class Repository extends Equatable {
  final String name;
  final String? fullName;
  final String? description;
  final String? htmlUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? forksCount;
  final Owner? owner;

  const Repository({
    required this.name,
    required this.fullName,
    required this.description,
    required this.htmlUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.forksCount,
    required this.owner,
  });

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
  Map<String, dynamic> toJson() => _$RepositoryToJson(this);

  @override
  List<Object?> get props => [
        name,
        fullName,
        description,
        htmlUrl,
        createdAt,
        updatedAt,
        forksCount,
        owner,
      ];
}

@JsonSerializable()
class Owner extends Equatable {
  final String login;
  final String? avatarUrl;
  final String? htmlUrl;

  const Owner({
    required this.login,
    required this.avatarUrl,
    required this.htmlUrl,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  @override
  List<Object?> get props => [login, avatarUrl, htmlUrl];
}
