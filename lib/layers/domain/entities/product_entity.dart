//entidade da camada de domínio, regras de negócio

class ProductEntity {
  ProductEntity({
    required this.name,
    required this.price,
    required this.qtd,
    required this.brand,
    required this.category,
  });

  final String name;
  final double price;
  final int qtd;
  final String brand;
  final String category;

  bool verifyAvaiable() {
    if (qtd > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyPrice() {
    if (price >= 0) {
      return true;
    } else {
      return false;
    }
  }
}
