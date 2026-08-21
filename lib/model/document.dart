import 'package:dscan/model/documentpage.dart';
import 'package:json_annotation/json_annotation.dart';

part 'document.g.dart';

@JsonSerializable()
class DocumentModel {
  final int? id;
  final String name;
  final String path;
  final DateTime createdAt;
  
  @JsonKey(defaultValue: [])
  List<DocumentPageModel> pages;

  DocumentModel({
    this.id,
    required this.name,
    required this.path,
    required this.createdAt,
    List<DocumentPageModel>? pages,
  }) : pages = pages ?? [];

  factory DocumentModel.fromJson(Map<String, dynamic> json) => _$DocumentModelFromJson(json);
  Map<String, dynamic> toJson() => _$DocumentModelToJson(this);
}