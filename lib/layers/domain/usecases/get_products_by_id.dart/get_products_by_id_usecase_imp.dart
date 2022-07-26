// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarq/layers/domain/entities/product_entity.dart';
import 'package:cleanarq/layers/domain/repositories/get_products_by_id_repository.dart';
import 'package:cleanarq/layers/domain/usecases/get_products_by_id.dart/get_products_by_id_usecase.dart';
import 'package:cleanarq/layers/infra/repositories/get_all_product_repository_imp.dart';

class GetProductsByIdUsecaseImp implements GetProductsByIdUsecase {
  final GetAllProductRepositoryImp _repository;
  GetProductsByIdUsecaseImp(
    this._repository,
  );

  @override
  List<ProductEntity> call() {
    return _repository.call();
  }
}
