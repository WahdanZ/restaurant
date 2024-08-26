import 'package:restaurant/base/domain/index.dart';
import 'package:restaurant/base/result/result.dart';
import 'package:restaurant/features/table_reservation/domain/repository/table_repository.dart';

class CancelReserveTableUseCase
    extends UseCaseResult<bool, CancelReserveTableUseCaseParams> {
  final TableRepository repository;

  CancelReserveTableUseCase(this.repository);

  @override
  Future<CustomResult<bool>> buildUseCase(
      CancelReserveTableUseCaseParams params) {
    return repository.cancelReservation(params.reservationId);
  }
}

class CancelReserveTableUseCaseParams extends Params {
  final String reservationId;

  CancelReserveTableUseCaseParams(this.reservationId);

  @override
  List<Object?> get props => [reservationId];
}
