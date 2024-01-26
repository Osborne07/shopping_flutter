import 'package:flutter/material.dart';
import 'package:shopping/modal/shooping_modal.dart';
import 'package:shopping/view/fav_screen.dart';
import 'package:shopping/view/shopping_cart_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  List<ShoppingModal> favList = [];
  List<ShoppingModal> cartList = [];
  List<ShoppingModal> shoppingModal = [
    ShoppingModal(
        image: "assets/cloth1.jpeg",
        price: 123,
        number: 0,
        fav: false,
        name: "Cotton Cloth1",
        description: "100% Cotton "),
    ShoppingModal(
        image: "assets/cloth1.jpeg",
        price: 124,
        number: 1,
        fav: false,
        name: "Cotton Cloth2"),
    ShoppingModal(
        image: "assets/cloth1.jpeg",
        price: 125,
        number: 2,
        fav: false,
        name: "Cotton Cloth3"),
    ShoppingModal(
        image: "assets/cloth1.jpeg",
        price: 126,
        number: 3,
        fav: false,
        name: "Cotton Cloth4"),
    ShoppingModal(
        image: "assets/cloth1.jpeg",
        price: 127,
        number: 4,
        fav: false,
        name: "Cotton Cloth5"),
    ShoppingModal(
        image: "assets/cloth1.jpeg",
        price: 128,
        number: 5,
        fav: false,
        name: "Cotton Cloth6"),
    ShoppingModal(
        image: "assets/cloth1.jpeg",
        price: 129,
        number: 6,
        fav: false,
        name: "Cotton Cloth7")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FavScreen(
                              favList: favList,
                            )));
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ))
        ],
        backgroundColor: Colors.orange,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          for (int i = 0; i < 10; i++) ...[
            Container(
              color: Colors.red,
              height: 100,
              width: 100, 
              child: Text("1"),
            )
          ]
        ],
      ),
    );
  }

  Widget listView() => ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 0; i < 100; i++) ...[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 50,
                width: 100,
                color: Colors.red,
                // child: Text(shoppingModal[i].),
              ),
            )
          ]
        ],
      );
}
// GestureDetector(
//                                 onTap: () {
//                                   if (shoppingModal[i].number == i) {
//                                     shoppingModal[i].fav =
//                                         !shoppingModal[i].fav;
//                                   }
//                                   setState(() {});
//                                 },
//                                 child: Icon(
//                                   !shoppingModal[i].fav
//                                       ? Icons.favorite_border
//                                       : Icons.favorite,
//                                   color: Colors.red,
//                                 ),
//                               )

// ListView.builder(
//             itemCount: shoppingModal.length,
//             itemBuilder: (context, count) {
//               return Container(
//                   height: 100,
//                   width: 100,
//                   color: count % 2 == 0 ? Colors.green : Colors.red,
//                   child: Image.asset(shoppingModal[count].image));
//             })

// ListView.builder(
//             itemCount: shoppingModal.length,
//             itemBuilder: (context, i) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//                   height: 100,
//                   width: 100,
//                   // color: i % 2 == 0 ? Colors.green : Colors.red,
//                   child: Column(
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                               width: 100,
//                               height: 70,
//                               child: Image.asset(shoppingModal[i].image)),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Name: ${shoppingModal[i].name}",
//                               ),
//                               Text(
//                                 "Price: ${shoppingModal[i].price}",
//                               ),
//                               shoppingModal[i].description != null
//                                   ? Text(
//                                       "Description: ${shoppingModal[i].description}",
//                                     )
//                                   : Offstage(),

//                               // GestureDetector(child: Icon(Icons.favorite))

//                               Row(
//                                 children: [
//                                   GestureDetector(
//                                       onTap: () {
//                                         if (shoppingModal[i].fav != true) {
//                                           shoppingModal[i].fav = true;
//                                           favList.add(shoppingModal[i]);

//                                           print(favList);
//                                         } else {
//                                           shoppingModal[i].fav = false;

//                                           favList.remove(shoppingModal[i]);

//                                           print(favList);
//                                         }
//                                         setState(() {});
//                                       },
//                                       child: Icon(
//                                         shoppingModal[i].fav
//                                             ? Icons.favorite
//                                             : Icons.favorite_outline,
//                                         color: Colors.red,
//                                       )),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   GestureDetector(
//                                       onTap: () {
//                                         cartList.add(shoppingModal[i]);
//                                         Navigator.push(
//                                             context,
//                                             MaterialPageRoute(
//                                                 builder: (context) =>
//                                                     ShoppingCartScreen(
//                                                       shoopingCart: cartList,
//                                                     )));
//                                         setState(() {});
//                                       },
//                                       child: Icon(Icons.shopping_cart_outlined))
//                                 ],
//                               )
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               );
//             })



// SingleChildScrollView(
//           // scrollDirection: Axis.horizontal,
//           child: Column(
//             children: [
//               for (int i = 0; i < shoppingModal.length; i++) ...[
//                 Container(
//                   width: 100,
//                   height: 100,
//                   color: i % 2 == 0 ? Colors.red : Colors.green,
//                 )
//               ]
//             ],
//           ),
//         )