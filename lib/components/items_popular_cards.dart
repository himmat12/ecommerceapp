import 'package:e_cmrc_prototype/model/item_class.dart';
import 'package:e_cmrc_prototype/pages/categorized_product_page.dart';
import 'package:e_cmrc_prototype/pages/product_details_page.dart';
import 'package:flutter/material.dart';

// items_card costum widget
class PopularItemsCard extends StatelessWidget {
  List<Item> popularItems = [
    Item(
      category: "Popular",
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
      category: "Popular",
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
      category: "Popular",
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
      category: "Popular",
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
      category: "Popular",
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
      category: "Popular",
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
    return Card(
      elevation: 0.0,
      color: Colors.white70,
      child: Container(
        height: 265,
        child: Column(
          children: <Widget>[
            // header...
            ListTile(
              leading: Text(
                "Popular",
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
                          builder: (context) => CategorizedPage(
                                category: "popular",
                              )));
                },
                child: Text(
                  "SHOP MORE >",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),
                ),
              ),
            ),
            // items
            Container(
              height: 200,
              child: ListView.builder(
                // itemCount: items.length,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                      itemClass: popularItems[index])));
                        },
                        child: Card(
                          elevation: 0.0,
                          child: Container(
                            width: 120,
                            child: Column(
                              children: <Widget>[
                                // image..
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4.0, right: 4.0, top: 8.0),
                                  child: Container(
                                    height: 110,
                                    width: 120,
                                    child: Image.network(
                                      popularItems[index].image1, //image
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),

                                //product_title
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0, top: 10.0),
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    height: 35,
                                    width: 120,
                                    child: Text(
                                      popularItems[index].title, //title
                                      maxLines: 2,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0),
                                    ),
                                  ),
                                ),

                                // price.
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Container(
                                    height: 20,
                                    alignment: Alignment.bottomLeft,
                                    width: 120,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Rs.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          popularItems[index]
                                              .totalPrice, //price
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 15.0,
                                              color: Theme.of(context)
                                                  .primaryColor,
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
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
