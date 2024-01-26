import 'package:flutter/material.dart';
import 'package:shopping/modal/shooping_modal.dart';

class ShoppingCartScreen extends StatefulWidget {
  List<ShoppingModal>? shoopingCart;
  ShoppingCartScreen({this.shoopingCart});

  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Check Out"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/cloth1.jpeg",
                ),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Text("Your Shopping Cart"),
            Expanded(
                child: ListView.builder(
                    itemCount: widget.shoopingCart!.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                          child: Text(widget.shoopingCart![i].name),
                        ),
                      );
                    })),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Back")),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Buy Now")),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
