import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/get_all_products_usecase_imp.dart';
import '../../infra/datasources/local/get_all_products_local_datasource.dart';
import '../../infra/repositories/get_all_product_repository_imp.dart';
import '../controller/product_controler.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);
  ProductControler controller = GetIt.I.get<ProductControler>();

  @override
  Widget build(BuildContext context) {
    controller.getallProducts();
    return Scaffold(
        appBar: AppBar(title: Text('')),
        body: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              return Text(
                controller.products[index].name,
                style: TextStyle(fontSize: 26),
              );
            }));
  }
}
