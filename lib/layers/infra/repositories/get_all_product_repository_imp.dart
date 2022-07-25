import '../datasources/local/get_all_products_local_datasource.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_all_produtcs_repository.dart';

//aqui sera a implementação do repositório, porém nao fará a requisição
//de fato.

class GetAllProductRepositoryImp implements GetAllProdutcsRepository {
  final GetAllProductsLocalDatasource _datasource;

  GetAllProductRepositoryImp(
    this._datasource,
  );

  @override
  List<ProductEntity> call() {
    return _datasource.call();
  }
}
