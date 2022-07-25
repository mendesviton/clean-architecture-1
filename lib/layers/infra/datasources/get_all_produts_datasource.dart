import '../../domain/entities/product_entity.dart';

abstract class GetAllProdutsDatasource {
  List<ProductEntity> call();
}
