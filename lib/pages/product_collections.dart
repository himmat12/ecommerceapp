import 'package:e_cmrc_prototype/components/components.dart';
import 'package:e_cmrc_prototype/model/item_class.dart';
import 'package:flutter/material.dart';

class ProductCollection extends StatefulWidget {
  // Item items;
  // ProductCollection({@required this.items});
  @override
  _ProductCollectionState createState() => _ProductCollectionState();
}

class _ProductCollectionState extends State<ProductCollection> {
  List<Item> mens = [
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
    return SafeArea(
      child: Scaffold(
        // appbar..
        appBar: AppBar(
          title: Text(
            "collections",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: <Widget>[
            IconButton(
                iconSize: 20,
                visualDensity: VisualDensity.standard,
                padding: EdgeInsets.only(right: 0.0),
                icon: Icon(
                  FontAwesomeIcons.search,
                ),
                onPressed: () {}),
            IconButton(
                iconSize: 20,
                visualDensity: VisualDensity.standard,
                padding: EdgeInsets.only(right: 20.0),
                icon: Icon(FontAwesomeIcons.shoppingBasket),
                onPressed: () {}),
          ],
        ),

        // body.
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  height: 300,
                  child: ListView.builder(
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: mens.length,
                    
                    itemBuilder: (context, index) => Card(
                      child: Container(
                        child: Wrap(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 150,
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        width: 116,
                                        child: Column(
                                          children: <Widget>[
                                            // image..
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 8.0,
                                              ),
                                              child: Container(
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                height: 100,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(
                                                      12.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    child: Image.network(
                                                      mens[index]
                                                          .image1, //image
                                                      fit: BoxFit.scaleDown,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            // title..
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                  right: 12.0,
                                                  top: 0.0,
                                                  bottom: 8.0),
                                              child: Text(
                                                mens[index].title, //title
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12.0,
                                                    color: Colors.black87),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
