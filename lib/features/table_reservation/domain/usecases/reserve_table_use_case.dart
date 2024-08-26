import 'package:restaurant/base/domain/index.dart';
import 'package:restaurant/base/result/result.dart';
import 'package:restaurant/features/table_reservation/domain/repository/table_repository.dart';

class ReserveTableUseCase
    extends UseCaseResult<bool, ReserveTableUseCaseParams> {
  final TableRepository repository;

  ReserveTableUseCase(this.repository);

  @override
  Future<CustomResult<bool>> buildUseCase(ReserveTableUseCaseParams params) {
    return repository.reserveTable(
        params.tableId, params.username, params.dateTime);
  }
}

class ReserveTableUseCaseParams extends Params {
  final String tableId;
  final DateTime dateTime;
  final String username;

  ReserveTableUseCaseParams(this.tableId, this.dateTime, this.username);

  @override
  List<Object?> get props => [tableId, dateTime];
}
