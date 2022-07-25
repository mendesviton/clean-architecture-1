import '../layers/domain/usecases/get_all_products_usecase_imp.dart';
import '../layers/infra/datasources/local/get_all_products_local_datasource.dart';
import '../layers/infra/repositories/get_all_product_repository_imp.dart';
import '../layers/presenter/controller/product_controler.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupDependencies() {
  //datasources
  getit.registerSingleton<GetAllProductsLocalDatasource>(
    GetAllProductsLocalDatasource(),
  );
  //repositories
  getit.registerSingleton<GetAllProductRepositoryImp>(
    GetAllProductRepositoryImp(getit.get<GetAllProductsLocalDatasource>()),
  );
  //usecases
  getit.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(getit.get<GetAllProductRepositoryImp>()),
  );
  //controllers
  getit.registerSingleton<ProductControler>(
    ProductControler(getit.get<GetAllProductsUsecaseImp>()),
  );
}
