import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'table_model.g.dart';

@Collection<TableModel>('tables')
final tableCollectionRef = TableModelCollectionReference();

@JsonSerializable()
class TableModel {
  @Id()
  final String id;
  final String name;
  final int chairs;

  TableModel({
    required this.id,
    required this.name,
    required this.chairs,
  });

  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);

  Map<String, dynamic> toJson() => _$TableModelToJson(this);
}
