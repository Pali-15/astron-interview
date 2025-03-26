// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryQueryResult _$RepositoryQueryResultFromJson(
        Map<String, dynamic> json) =>
    RepositoryQueryResult(
      maxIndex: (json['maxIndex'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => Repository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepositoryQueryResultToJson(
        RepositoryQueryResult instance) =>
    <String, dynamic>{
      'maxIndex': instance.maxIndex,
      'items': instance.items,
    };

Repository _$RepositoryFromJson(Map<String, dynamic> json) => Repository(
      name: json['name'] as String,
      fullName: json['fullName'] as String?,
      description: json['description'] as String?,
      htmlUrl: json['htmlUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      forksCount: (json['forksCount'] as num?)?.toInt(),
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fullName': instance.fullName,
      'description': instance.description,
      'htmlUrl': instance.htmlUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'forksCount': instance.forksCount,
      'owner': instance.owner,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      login: json['login'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      htmlUrl: json['htmlUrl'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'login': instance.login,
      'avatarUrl': instance.avatarUrl,
      'htmlUrl': instance.htmlUrl,
    };
