import 'package:json_annotation/json_annotation.dart';

part 'documentpage.g.dart';

@JsonSerializable()
class DocumentPageModel {
  final int? id;
  final int? documentId;
  final String path;
  final int pageNumber;
  final DateTime createdAt;

  DocumentPageModel({
    this.id,
    this.documentId,
    required this.path,
    required this.pageNumber,
    required this.createdAt,
  });

  factory DocumentPageModel.fromJson(Map<String, dynamic> json) =>
      _$DocumentPageModelFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentPageModelToJson(this);
}
