import 'package:products_app/Api.dart';
import 'package:products_app/Models/product_model.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');
    //List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> productslist = [];
    for (int i = 0; i < 4; i++) {
      productslist.add(ProductModel.fromJson(data[i]));
    }
    return productslist;
  }
}
