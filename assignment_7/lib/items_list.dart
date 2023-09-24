import 'package:assignment_7/card_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Rows extends StatefulWidget {
 
  String productTitle;
  final double productPrise;
  
  var cart;
  Rows(
      {super.key,
      required this.productTitle,
      required this.productPrise,
      });

     @override
  State<Rows> createState() => _RowsState();
}

class _RowsState extends State<Rows> {
  int listCount =0;
  

  void itemCount(){
    setState(() {
   
      cart.add(widget.productTitle);
    });
  }

   void _itemInCrement(){
setState(() {
  listCount++;
  if(listCount == 5){
    _showDialog();
  }
});
  }

  void _showDialog(){
    showDialog(
      context: context,
       builder: (context){
        return AlertDialog(
          title: const Text("Congratulation!"),
          content: Text("You've bought 5 ${widget.productTitle}"),
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("OK"))
          ],
        );
       });
  }
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.productTitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(height: 8.0,),
            Text("Price: ${widget.productPrise}",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Column(
          children: [
            Text("Counter: $listCount",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
            ),
            const SizedBox(height: 2.0,),
            TextButton(
              onPressed: () {
                _itemInCrement();
               itemCount();
              },
              child: const Text("Buy Now"),
            )
          ],
        ),
      ],
    );
  }
 
}

