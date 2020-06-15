import 'package:e_cmrc_prototype/model/item_class.dart';
import 'package:e_cmrc_prototype/pages/product_details_page.dart';
import 'package:flutter/material.dart';
import '../components/components.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategorizedPage extends StatefulWidget {
  String category;
  CategorizedPage({@required this.category});

  @override
  _CategorizedPageState createState() => _CategorizedPageState();
}

class _CategorizedPageState extends State<CategorizedPage> {
  List<Item> categorizedItems = [
    Item(
      title: "Aidian shoes (Men)",
      discountAmount: "13500",
      discountPercent: "20",
      image1:
          "https://www.fewabazar.com/images/thumbs/001/0012588_aidian-shoes-for-men-in-white-color.jpeg",
      image2:
          "https://www.fewabazar.com/images/thumbs/001/0012587_aidian-shoes-for-men-in-black-color.jpeg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "12500",
    ),
    Item(
      title: "Adidas continental shoes (Men)",
      discountAmount: "14500",
      discountPercent: "30",
      image1:
          "https://assets.adidas.com/images/w_600,f_auto,q_auto/a48aa54a7a18401a8e37ab1200ebf773_9366/Continental_80_Shoes_White_FV3891_01_standard.jpg",
      image2:
          "https://www.dressinn.com/f/13738/137381126/adidas-originals-continental-80-junior.jpg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "11500",
    ),
    Item(
      title: "FILA Tracer shoes (Men)",
      discountAmount: "15500",
      discountPercent: "25",
      image1:
          "https://images.journeys.com/images/products/1_549363_ZM_GRAY_ALT1.JPG",
      image2:
          "https://cdn.shopify.com/s/files/1/1374/2665/products/0068120_title.jpg?v=1547024271",
      image3:
          "https://images.journeys.com/images/products/1_571028_ZM_ALT1.JPG",
      totalPrice: "13550",
    ),
    Item(
      title: "Aidian shoes (Men)",
      discountAmount: "13500",
      discountPercent: "20",
      image1:
          "https://www.fewabazar.com/images/thumbs/001/0012588_aidian-shoes-for-men-in-white-color.jpeg",
      image2:
          "https://www.fewabazar.com/images/thumbs/001/0012587_aidian-shoes-for-men-in-black-color.jpeg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "12500",
    ),
    Item(
      title: "Adidas continental shoes (Men)",
      discountAmount: "14500",
      discountPercent: "30",
      image1:
          "https://assets.adidas.com/images/w_600,f_auto,q_auto/a48aa54a7a18401a8e37ab1200ebf773_9366/Continental_80_Shoes_White_FV3891_01_standard.jpg",
      image2:
          "https://www.dressinn.com/f/13738/137381126/adidas-originals-continental-80-junior.jpg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "11500",
    ),
    Item(
      title: "FILA Tracer shoes (Men)",
      discountAmount: "15500",
      discountPercent: "25",
      image1:
          "https://images.journeys.com/images/products/1_549363_ZM_GRAY_ALT1.JPG",
      image2:
          "https://cdn.shopify.com/s/files/1/1374/2665/products/0068120_title.jpg?v=1547024271",
      image3:
          "https://images.journeys.com/images/products/1_571028_ZM_ALT1.JPG",
      totalPrice: "13550",
    ),
    Item(
      title: "Aidian shoes (Men)",
      discountAmount: "13500",
      discountPercent: "20",
      image1:
          "https://www.fewabazar.com/images/thumbs/001/0012588_aidian-shoes-for-men-in-white-color.jpeg",
      image2:
          "https://www.fewabazar.com/images/thumbs/001/0012587_aidian-shoes-for-men-in-black-color.jpeg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "12500",
    ),
    Item(
      title: "Adidas continental shoes (Men)",
      discountAmount: "14500",
      discountPercent: "30",
      image1:
          "https://assets.adidas.com/images/w_600,f_auto,q_auto/a48aa54a7a18401a8e37ab1200ebf773_9366/Continental_80_Shoes_White_FV3891_01_standard.jpg",
      image2:
          "https://www.dressinn.com/f/13738/137381126/adidas-originals-continental-80-junior.jpg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "11500",
    ),
    Item(
      title: "FILA Tracer shoes (Men)",
      discountAmount: "15500",
      discountPercent: "25",
      image1:
          "https://images.journeys.com/images/products/1_549363_ZM_GRAY_ALT1.JPG",
      image2:
          "https://cdn.shopify.com/s/files/1/1374/2665/products/0068120_title.jpg?v=1547024271",
      image3:
          "https://images.journeys.com/images/products/1_571028_ZM_ALT1.JPG",
      totalPrice: "13550",
    ),
    Item(
      title: "Aidian shoes (Men)",
      discountAmount: "13500",
      discountPercent: "20",
      image1:
          "https://www.fewabazar.com/images/thumbs/001/0012588_aidian-shoes-for-men-in-white-color.jpeg",
      image2:
          "https://www.fewabazar.com/images/thumbs/001/0012587_aidian-shoes-for-men-in-black-color.jpeg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "12500",
    ),
    Item(
      title: "Adidas continental shoes (Men)",
      discountAmount: "14500",
      discountPercent: "30",
      image1:
          "https://assets.adidas.com/images/w_600,f_auto,q_auto/a48aa54a7a18401a8e37ab1200ebf773_9366/Continental_80_Shoes_White_FV3891_01_standard.jpg",
      image2:
          "https://www.dressinn.com/f/13738/137381126/adidas-originals-continental-80-junior.jpg",
      image3:
          "https://www.fewabazar.com/images/thumbs/001/0012589_aidian-shoes-for-men-in-blue-color.jpeg",
      totalPrice: "11500",
    ),
    Item(
      title: "FILA Tracer shoes (Men)",
      discountAmount: "15500",
      discountPercent: "25",
      image1:
          "https://images.journeys.com/images/products/1_549363_ZM_GRAY_ALT1.JPG",
      image2:
          "https://cdn.shopify.com/s/files/1/1374/2665/products/0068120_title.jpg?v=1547024271",
      image3:
          "https://images.journeys.com/images/products/1_571028_ZM_ALT1.JPG",
      totalPrice: "13550",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appbar..
        appBar: AppBar(
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
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            // "Categorized Items page",
            widget.category,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),

        // body..
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: categorizedItems.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductPage(
                                    itemClass: categorizedItems[index])));
                      },
                      child: Card(
                        elevation: 0.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 20,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 4.0, right: 4.0, top: 0.0),
                                child: Container(
                                  height: 120,
                                  width: 160,
                                  child: Image.network(
                                    categorizedItems[index].image1,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0, top: 0.0),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  // color: Colors.deepPurple,
                                  height: 31,
                                  width: 120,
                                  child: Text(
                                    categorizedItems[index].title,
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Container(
                                  // color: Colors.green,
                                  height: 14,
                                  alignment: Alignment.bottomLeft,
                                  width: 120,
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Rs.",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        categorizedItems[index].totalPrice,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
