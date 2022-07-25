import '../entities/product_entity.dart';

//contrato do caso de uso para trazer todos os produtos

abstract class GetAllProductsUsecase {
  List<ProductEntity> call();
}
