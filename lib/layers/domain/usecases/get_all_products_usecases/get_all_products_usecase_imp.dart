import '../../entities/product_entity.dart';
import '../../repositories/get_all_produtcs_repository.dart';
import 'get_all_products_usecase.dart';

//implementação do caso de uso GetAllProductsUsecase

class GetAllProductsUsecaseImp implements GetAllProductsUsecase {
  final GetAllProdutcsRepository _repository;

  GetAllProductsUsecaseImp(
    this._repository,
  );

  @override
  List<ProductEntity> call() {
    return _repository.call();
  }
}
