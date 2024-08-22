// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure {
  const factory NetworkFailure.api({dynamic message}) = _ApiFailure;
  const factory NetworkFailure.unAuthorized({dynamic message}) =
      _UnAuthorizedFailure;
  const factory NetworkFailure.noInternet({dynamic message}) =
      _NoInternetFailure;
  const factory NetworkFailure.unknown({dynamic message}) = _UnknownFailure;
  const factory NetworkFailure.timeout({dynamic message}) = _TimeoutFailure;
}
