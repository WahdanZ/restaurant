///
///Interface for model mappers. It provides helper methods that facilitate
///retrieving of models from outer data source layers
///
///@param <R> the remote model input type
///@param <M> the model return type
///
abstract class Mapper<M, R> {
  M mapFromEntity(R type);
  R mapFromModel(M type);
}
