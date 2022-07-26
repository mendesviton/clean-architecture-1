import 'package:cleanarq/layers/domain/entities/product_entity.dart';

abstract class GetProductByNameDatasource {
  ProductEntity call();
}
