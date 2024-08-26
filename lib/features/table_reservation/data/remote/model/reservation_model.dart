import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reservation_model.g.dart';

@Collection<ReservationModel>('reservations')
final reservationCollectionRef = ReservationModelCollectionReference();

@JsonSerializable()
class ReservationModel {
  @Id()
  final String id;
  final String tableId;
  final String userId;
  final DateTime startTime;
  final DateTime endTime;
  final String username;

  ReservationModel({
    required this.id,
    required this.tableId,
    required this.userId,
    required this.startTime,
    required this.endTime,
    required this.username,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservationModelToJson(this);
}
