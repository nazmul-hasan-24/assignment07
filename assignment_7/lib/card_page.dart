import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  final int totalProductsInCart = 0;
  const CartPage( {
    super.key,
    
    });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("Cart",
      style: TextStyle(fontSize: 18),
      ),
      shape:  const OutlineInputBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0)),
      ),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Total products in cadt: ${widget.totalProductsInCart.toString()}")
          ],
        ),
      ),
      );
  }
}