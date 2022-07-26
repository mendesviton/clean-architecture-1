// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarq/layers/domain/usecases/get_products_by_id.dart/get_products_by_id_usecase.dart';

import '../../domain/entities/product_entity.dart';

class ProductControlerById {
  final GetProductsByIdUsecase _getProductsByIdUsecase;

  ProductControlerById(
    this._getProductsByIdUsecase,
  );

  late List<ProductEntity> productList;

  ProductEntity? getProductbyId(int id) {
    productList = _getProductsByIdUsecase.call();

    for (ProductEntity element in productList) {
      if (element.id == id) {
        return element;
      }
    }
    return null;
  }
}
