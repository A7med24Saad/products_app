import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:products_app/Models/product_model.dart';
import 'package:products_app/Widgets/card.dart';
import 'package:products_app/services/get_all_products.dart';

class Home_View extends StatefulWidget {
  const Home_View({super.key});
  static String id = 'home view';

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  //Future<List<ProductModel>> products = AllProductsServices().getAllProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartPlus))
        ],
        title: const Text('New Trend'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: FutureBuilder<List<ProductModel>>(
              future: AllProductsServices().getAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<ProductModel> products = snapshot.data!;

                  return GridView.builder(
                      itemCount: products.length,
                      clipBehavior: Clip.none,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 15,
                      ),
                      itemBuilder: (context, index) {
                        return card(
                          product: products[index],
                        );
                      });
                } else {
                  return const Center(
                      child: CircularProgressIndicator(
                    color: Colors.black,
                  ));
                }
              })),
      //bottomNavigationBar: BottomNavigationBar(items: I),
    );
  }
}
