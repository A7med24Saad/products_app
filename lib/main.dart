import 'package:flutter/material.dart';
import 'package:products_app/screens/Update_product_View.dart';
import 'package:products_app/screens/home_view.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Home_View.id: (context) => const Home_View(),
        UpdateProductView.id: (context) => UpdateProductView()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: Home_View.id,
    );
  }
}
