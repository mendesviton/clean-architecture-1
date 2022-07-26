import 'package:cleanarq/layers/domain/entities/product_entity.dart';
import 'package:cleanarq/layers/infra/datasources/get_product_by_id_datasource.dart';

class GetProductByIdLocalDatasource implements GetProductByNameDatasource {
  @override
  ProductEntity call() {
    return ProductEntity(
        id: 1,
        name: 'Computador',
        price: 1400,
        qtd: 5,
        brand: 'hp',
        category: 'eletrônicos');
  }
}
