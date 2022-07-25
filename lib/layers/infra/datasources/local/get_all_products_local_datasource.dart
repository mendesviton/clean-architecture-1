import '../../../domain/entities/product_entity.dart';
import '../get_all_produts_datasource.dart';

class GetAllProductsLocalDatasource implements GetAllProdutsDatasource {
  @override
  List<ProductEntity> call() {
    return [
      //aqui seria feito a chamada dessa lista de produtos da Api;
      ProductEntity(
          name: 'Computador',
          price: 1400,
          qtd: 5,
          brand: 'hp',
          category: 'eletrônicos'),
      ProductEntity(
          name: 'Notebook',
          price: 5000,
          qtd: 5,
          brand: 'sansung',
          category: 'eletrônicos'),
      ProductEntity(
          name: 'Camisinha',
          price: 5.9,
          qtd: 5,
          brand: 'Jontex',
          category: 'Preservativos')
    ];
  }
}
