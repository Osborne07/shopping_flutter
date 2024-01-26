import 'package:flutter/material.dart';
import 'package:shopping/modal/shooping_modal.dart';

class FavScreen extends StatefulWidget {
  List<ShoppingModal>? favList;
  FavScreen({this.favList});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  void initState() {

    
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Wish List"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Your Wish List",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          widget.favList!.isEmpty
              ? Center(child: CircularProgressIndicator())
              : Expanded(
                  child: ListView.builder(
                      itemCount: widget.favList!.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 20,
                            height: 100,
                            color: Colors.green,
                            child: Text(widget.favList![i].name),
                          ),
                        );
                      }),
                )
        ],
      ),
    );
  }
}
