import 'package:cleanarq/layers/domain/entities/product_entity.dart';

abstract class GetProductsByIdUsecase {
  List<ProductEntity> call();
}
