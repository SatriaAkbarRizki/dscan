// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documentpage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocumentPageModel _$DocumentPageModelFromJson(Map<String, dynamic> json) =>
    DocumentPageModel(
      id: (json['id'] as num?)?.toInt(),
      documentId: (json['documentId'] as num?)?.toInt(),
      path: json['path'] as String,
      pageNumber: (json['pageNumber'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$DocumentPageModelToJson(DocumentPageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'path': instance.path,
      'pageNumber': instance.pageNumber,
      'createdAt': instance.createdAt.toIso8601String(),
    };
