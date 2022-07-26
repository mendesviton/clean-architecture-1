import 'package:cleanarq/layers/domain/entities/product_entity.dart';

abstract class GetProductsByIdRepository {
  
  ProductEntity call();
}
