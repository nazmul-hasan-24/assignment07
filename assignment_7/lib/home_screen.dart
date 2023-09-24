import 'package:assignment_7/card_page.dart';
import 'package:assignment_7/items_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("Products List"),
        centerTitle: true,
        elevation: 0.7,
        shape: const OutlineInputBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0)),
      ),
      ),
      floatingActionButton: FloatingActionButton(
    
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return    CartPage();
          },
          )
          );
        },
        tooltip: "Go to Cart",
        child: const Icon(Icons.shopping_cart_checkout),
      ),
      body: Scrollbar(
        interactive: false,
        radius: const Radius.circular(10.0),
        thickness: 5.0,
        trackVisibility: true,
        thumbVisibility: true,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(13.0),
          children: [
            const SizedBox(
              height: 10,
            ),
            Rows(
                productTitle: 'Apple',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Banana',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Mango',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Pineapple',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Orange',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Lichi',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Jackfruit',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Tomato',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Coconut',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Pomegranate',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Grapes ',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Berry',
                productPrise: 00.00,
                ),
            Rows(
                productTitle: 'Rhythm',
                productPrise: 00.00,
                ),
          ]
        )
      ),
    );
  }
}