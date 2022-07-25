import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase.dart';

class ProductControler {
  final GetAllProductsUsecase _getAllProductsUsecase;

  ProductControler(
    this._getAllProductsUsecase,
  );

  List<ProductEntity> products = [];

  getallProducts() {
    products = _getAllProductsUsecase.call();
  }
}
