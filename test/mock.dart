import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:restaurant/features/food_items/data/models/food_item.dart';
import 'package:restaurant/features/food_items/data/remote/data_source/food_item_remote_data_source.dart';
import 'package:restaurant/features/food_items/domain/repositories/food_item_repository.dart';
import 'package:restaurant/features/food_items/domain/usecases/get_food_item_details.dart';
import 'package:restaurant/features/food_items/domain/usecases/get_food_items_use_case.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/cancel_reserve_table_use_case.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/get_tables_for_date_use_case.dart';
import 'package:restaurant/features/table_reservation/domain/usecases/reserve_table_use_case.dart';

@injectable
class MockFoodItemRepository extends Mock implements FoodItemRepository {}

@injectable
class MockFoodItemCollection extends Mock
    implements FoodItemCollectionReference {}

@injectable
class MockFoodItemQuerySnapshot extends Mock implements FoodItemQuerySnapshot {}

@injectable
class MockFoodItemQueryDocumentSnapshot extends Mock
    implements FoodItemQueryDocumentSnapshot {}

@injectable
class MockFoodItemRemoteDataSource extends Mock
    implements FoodItemRemoteDataSource {}

@injectable
class MockGetFoodItemsUseCase extends Mock implements GetFoodItemsUseCase {}

@injectable
class MockGetFoodItemDetailsUseCase extends Mock
    implements GetFoodItemDetailsUseCase {}

@injectable
class MockGetTablesForDateUseCase extends Mock
    implements GetTablesForDateUseCase {}

@injectable
class MockReserveTableUseCase extends Mock implements ReserveTableUseCase {}

@injectable
class MockCancelReserveTableUseCase extends Mock
    implements CancelReserveTableUseCase {}
