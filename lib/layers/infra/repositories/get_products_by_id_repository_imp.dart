// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarq/layers/domain/entities/product_entity.dart';
import 'package:cleanarq/layers/domain/repositories/get_products_by_id_repository.dart';
import 'package:cleanarq/layers/infra/datasources/local/get_product_by_id_local_datasource.dart';

class GetProductsByIdRepositoryImp implements GetProductsByIdRepository {
  final GetProductByIdLocalDatasource _datasource;

  GetProductsByIdRepositoryImp(
    this._datasource,
  );

  @override
  ProductEntity call() {
    return _datasource.call();
  }
}
