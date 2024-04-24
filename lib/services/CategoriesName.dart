import 'dart:core';
import 'package:products_app/Api.dart';
import 'package:products_app/Models/product_model.dart';

class CategoriesServices {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String category_name}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$category_name');
    List<ProductModel> productslist = [];
    for (int i = 0; i < data.length; i++) {
      productslist.add(ProductModel.fromJson(data[i]));
    }
    return productslist;
  }
}
