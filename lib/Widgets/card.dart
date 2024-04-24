import 'package:flutter/material.dart';
import 'package:products_app/Models/product_model.dart';
import 'package:products_app/screens/Update_product_View.dart';

class card extends StatelessWidget {
  ProductModel product;
  card({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, UpdateProductView.id,
              arguments: product);
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.green.withOpacity(0),
                  spreadRadius: 0,
                )
              ]),
              child: Card(
                color: Colors.white,
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 10),
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price}',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: -5,
              right: 10,
              bottom: 60,
              left: 10,
              child: Image.network(
                product.image,
                //fit: BoxFit.cover,
                height: 100, // Adjust the height to fit within the card
                //width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
