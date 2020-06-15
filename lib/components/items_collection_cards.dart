import 'package:e_cmrc_prototype/model/item_class.dart';
import 'package:e_cmrc_prototype/pages/product_collections.dart';
import 'package:flutter/material.dart';

// items_card costum widget
class CollectionsCard extends StatefulWidget {
  @override
  _CollectionsCardState createState() => _CollectionsCardState();
}

class _CollectionsCardState extends State<CollectionsCard> {
  List<Item> items = [
    Item(
      title: "Chocolate wafer",
      image1:
          "https://static-01.daraz.com.np/p/778b6dfbc3e74f83e678bc6b413fd063.jpg",
      totalPrice: "1250",
    ),
    Item(
      title: "Converse ",
      image1:
          "https://static-01.daraz.com.np/p/2c4bbbbac06ff3fe1068112e5f85d06b.jpg",
      totalPrice: "1650",
    ),
    Item(
      title: "Vans mens wear",
      image1:
          "https://static-01.daraz.com.np/p/5ddc01ee3b532415b4a4ec1f84013115.jpg",
      totalPrice: "2500",
    ),
    Item(
      title: "Titan wear",
      image1:
          "https://static-01.daraz.com.np/p/9d219d063d863f0a4bb706ed48995807.jpg",
      totalPrice: "1769",
    ),
    Item(
      title: "Vans black",
      image1:
          "https://static-01.daraz.com.np/p/ee24b274730e3a18f89d31868127cb2a.jpg_200x200q80-product.jpg_.webp",
      totalPrice: "3460",
    ),
    Item(
      title: "PAIDU Pbn19 watch",
      image1:
          "https://static-01.daraz.com.np/p/c2c2ea820d0d21d598447ee6c5ffe37f.jpg_200x200q80-product.jpg_.webp",
      totalPrice: "1340",
    ),
  ];

  List<Item> shoes = [
    Item(
      title: "Chocolate wafer",
      image1:
          "https://static-01.daraz.com.np/p/778b6dfbc3e74f83e678bc6b413fd063.jpg",
      totalPrice: "1250",
    ),
    Item(
      title: "Converse ",
      image1:
          "https://static-01.daraz.com.np/p/2c4bbbbac06ff3fe1068112e5f85d06b.jpg",
      totalPrice: "1650",
    ),
    Item(
      title: "Vans mens wear",
      image1:
          "https://static-01.daraz.com.np/p/5ddc01ee3b532415b4a4ec1f84013115.jpg",
      totalPrice: "2500",
    ),
    Item(
      title: "Titan wear",
      image1:
          "https://static-01.daraz.com.np/p/9d219d063d863f0a4bb706ed48995807.jpg",
      totalPrice: "1769",
    ),
    Item(
      title: "Vans black",
      image1:
          "https://static-01.daraz.com.np/p/ee24b274730e3a18f89d31868127cb2a.jpg_200x200q80-product.jpg_.webp",
      totalPrice: "3460",
    ),
    Item(
      title: "PAIDU Pbn19 watch",
      image1:
          "https://static-01.daraz.com.np/p/c2c2ea820d0d21d598447ee6c5ffe37f.jpg_200x200q80-product.jpg_.webp",
      totalPrice: "1340",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: <Widget>[
          // header...
          ListTile(
            leading: Text(
              "Collections",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            trailing: FlatButton(
              textTheme: ButtonTextTheme.accent,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductCollection()));
              },
              child: Text(
                "SHOP MORE >",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),
              ),
            ),
          ),
          // items
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                          elevation: 0.0,
                          child: Container(
                            width: 220,
                            child: Column(
                              children: <Widget>[
                                // text
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10.0,
                                    right: 8.0,
                                    top: 10.0,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topLeft,
                                        height: 35,
                                        width: 120,
                                        child: Text(
                                          items[index].title, //title
                                          maxLines: 2,
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // image
                                Padding(
                                  padding: const EdgeInsets.all(0),
                                  child: Container(
                                    height: 188,
                                    width: 213,
                                    child: Image.network(
                                      items[index].image1, //image
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
