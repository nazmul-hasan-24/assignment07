import 'package:flutter/material.dart';
final List<String> cart =[];
class CartPage extends StatefulWidget {
    
   CartPage( {
    super.key,
    });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {


  get productTitle => null;
  @override
  Widget build(BuildContext context) {
    // int? totalProductsInCart;
    return  Scaffold(
      appBar: AppBar(title: const Text("Cart",
      style: TextStyle(fontSize: 18),
      ),
      shape:  const OutlineInputBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0)),
      ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total products in cadt:  $cart")
            ],
          ),
        ),
      ),
      );
  }
}