import 'package:restaurant/base/index.dart';
import 'package:restaurant/features/table_reservation/domain/entities/table_entity.dart';
import 'package:restaurant/features/table_reservation/domain/repository/table_repository.dart';

class GetTablesForDateUseCase
    extends UseCaseResult<List<TableEntity>, GetTablesForDateUseCaseParams> {
  final TableRepository repository;

  GetTablesForDateUseCase(this.repository);

  @override
  Future<CustomResult<List<TableEntity>>> buildUseCase(
      GetTablesForDateUseCaseParams params) {
    return repository.getTablesForDate(params.date);
  }
}

class GetTablesForDateUseCaseParams extends Params {
  final DateTime date;

  GetTablesForDateUseCaseParams(this.date);

  @override
  List<Object?> get props => [date];
}
