import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:products_app/Models/product_model.dart';

class getproducts {
  Future<List<ProductModel>> getp() async {
    try {
      var res = await Dio().get('https://fakestoreapi.com/products');
      if (res.statusCode == 200) {
        List<dynamic> data = jsonDecode(res.data);
        List<ProductModel> products = [];
        for (int i = 0; i < data.length; i++) {
          products.add(ProductModel.fromJson(data[i]));
        }
        // return ProductModel.fromJson(res.data);
        print(res.data);
        return products;
        //print(res.data);
      }
      // var url = Uri.parse(
      //     'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=125aac10045c4091a1fa77bc672ce782');
      // var res = await http.get(url);
      // if (res.statusCode == 200) {
      //   return NewsModel.fromJson(json.decode(res.body));
      // }
    } catch (e) {
      print(e.toString());
    }
    throw Exception('fdf');
  }
}
