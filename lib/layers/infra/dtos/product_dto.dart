import 'dart:convert';

import '../../domain/entities/product_entity.dart';

// nosso dto é o DATA TRANSFORM OBJECT

//converte de json para objeto

class ProductDto extends ProductEntity {
  final String nameProduct;
  final double priceProduct;
  final int quantityProduct;
  final String brandProduct;
  final String categoryProduct;
  ProductDto({
    required this.nameProduct,
    required this.priceProduct,
    required this.quantityProduct,
    required this.brandProduct,
    required this.categoryProduct,
  }) : super(
            name: nameProduct,
            brand: brandProduct,
            category: categoryProduct,
            price: priceProduct,
            qtd: quantityProduct);

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nameProduct': nameProduct});
    result.addAll({'priceProduct': priceProduct});
    result.addAll({'quantityProduct': quantityProduct});
    result.addAll({'brandProduct': brandProduct});
    result.addAll({'categoryProduct': categoryProduct});

    return result;
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    return ProductDto(
      nameProduct: map['nameProduct'] ?? '',
      priceProduct: map['priceProduct']?.toDouble() ?? 0.0,
      quantityProduct: map['quantityProduct']?.toInt() ?? 0,
      brandProduct: map['brandProduct'] ?? '',
      categoryProduct: map['categoryProduct'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDto.fromJson(String source) =>
      ProductDto.fromMap(json.decode(source));
}
