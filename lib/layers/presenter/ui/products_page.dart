import 'package:cleanarq/layers/presenter/controller/product_controler_by_id.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/get_all_products_usecases/get_all_products_usecase_imp.dart';
import '../../infra/datasources/local/get_all_products_local_datasource.dart';
import '../../infra/repositories/get_all_product_repository_imp.dart';
import '../controller/product_controler.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);
  // ProductControler controller = GetIt.I.get<ProductControler>();
  ProductControlerById controller = GetIt.I.get<ProductControlerById>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Text((controller.getProductbyId(1) != null)
          ? controller.getProductbyId(1)!.name
          : 'nao encontrado'),
      // body: ListView.builder(
      //     itemCount: 1,
      //     itemBuilder: (context, index) {
      //       // return Text(
      //       //   controller.products[index].name,
      //       //   style: TextStyle(fontSize: 26),
      //       // );
      //       return Text('data');
    );
  }
}
