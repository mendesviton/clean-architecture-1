import 'package:cleanarq/layers/domain/usecases/get_products_by_id.dart/get_products_by_id_usecase_imp.dart';
import 'package:cleanarq/layers/infra/datasources/get_product_by_id_datasource.dart';
import 'package:cleanarq/layers/infra/datasources/local/get_product_by_id_local_datasource.dart';
import 'package:cleanarq/layers/infra/repositories/get_products_by_id_repository_imp.dart';
import 'package:cleanarq/layers/presenter/controller/product_controler_by_id.dart';

import '../layers/domain/usecases/get_all_products_usecases/get_all_products_usecase_imp.dart';
import '../layers/infra/datasources/local/get_all_products_local_datasource.dart';
import '../layers/infra/repositories/get_all_product_repository_imp.dart';
import '../layers/presenter/controller/product_controler.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupDependencies() {
  getit.registerSingleton<GetAllProductsLocalDatasource>(
    GetAllProductsLocalDatasource(),
  );
  //repositories
  getit.registerSingleton<GetAllProductRepositoryImp>(
    GetAllProductRepositoryImp(getit.get<GetAllProductsLocalDatasource>()),
  );
  //usecases
  getit.registerSingleton<GetProductsByIdUsecaseImp>(
    GetProductsByIdUsecaseImp(getit.get<GetAllProductRepositoryImp>()),
  );
  //controllers
  getit.registerSingleton<ProductControlerById>(
    ProductControlerById(getit.get<GetProductsByIdUsecaseImp>()),
  );

  //datasources
  // getit.registerSingleton<GetAllProductsLocalDatasource>(
  //   GetAllProductsLocalDatasource(),
  // );
  // //repositories
  // getit.registerSingleton<GetAllProductRepositoryImp>(
  //   GetAllProductRepositoryImp(getit.get<GetAllProductsLocalDatasource>()),
  // );
  // //usecases
  // getit.registerSingleton<GetAllProductsUsecaseImp>(
  //   GetAllProductsUsecaseImp(getit.get<GetAllProductRepositoryImp>()),
  // );
  // //controllers
  // getit.registerSingleton<ProductControler>(
  //   ProductControler(getit.get<GetAllProductsUsecaseImp>()),
  // );
}
