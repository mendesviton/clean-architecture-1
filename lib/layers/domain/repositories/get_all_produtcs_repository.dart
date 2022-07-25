import '../entities/product_entity.dart';

//contrato do repositório a sua implementação sera feita em e
abstract class GetAllProdutcsRepository {
  List<ProductEntity> call();
}
