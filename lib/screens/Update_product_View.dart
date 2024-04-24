import 'package:flutter/material.dart';
import 'package:products_app/Models/product_model.dart';
import 'package:products_app/services/update_product.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({super.key});
  static String id = 'update product';

  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  final TextEditingController? productname = TextEditingController();

  final TextEditingController? description = TextEditingController();

  String? price;

  final TextEditingController? image = TextEditingController();
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: productname,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      label: const Text(
                        'Product name',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: description,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      label: const Text(
                        'Description',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onChanged: (data) {
                    price = data;
                  },
                  keyboardType: TextInputType.number,
                  //controller: price,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      label: const Text(
                        'Price',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, right: 8, left: 8, bottom: 30),
                child: TextFormField(
                  controller: image,
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      label: const Text(
                        'Image',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
              GestureDetector(
                onTap: () {
                  isloading = true;
                  setState(() {});
                  try {
                    UpdateProduct(product);
                    print('Success');
                  } catch (e) {
                    print(e.toString());
                  }
                  isloading = false;
                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: const Center(
                    child: Text(
                      "Update",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void UpdateProduct(ProductModel product) {
    UpdateProductService().updateProduct(
        title: productname == null ? product.title : productname.toString(),
        price: price == null ? product.price.toString() : price!,
        description: description.toString(),
        image: image == null ? product.image : image.toString(),
        category: product.category);
  }
}
