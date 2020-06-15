import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_cmrc_prototype/components/components.dart';
import 'package:e_cmrc_prototype/model/item_class.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  Item itemClass;
  ProductPage({@required this.itemClass});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int counter = 1;

  void addCount() {
    setState(() {
      counter++;
    });
  }

  void subCount() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var discountPercent = widget.itemClass.discountPercent;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
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
            widget.itemClass.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),

        // bottom app bar
        bottomNavigationBar: BottomAppBar(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.transparent,
          elevation: 0,
          child: SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 8.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                color: Colors.green,
                // color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ),
        ),

        // body..
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // product_image_slider
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Carousel(
                      autoplay: false,
                      dotBgColor: Colors.transparent,
                      boxFit: BoxFit.fill,
                      showIndicator: true,
                      animationCurve: Curves.linear,
                      animationDuration: Duration(milliseconds: 900),
                      images: [
                        NetworkImage(widget.itemClass.image1),
                        NetworkImage(widget.itemClass.image2),
                        NetworkImage(widget.itemClass.image3),
                      ],
                    ),
                  ),
                ),
              ),

              // product_name_price
              ListTile(
                title: Text(
                  widget.itemClass.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.heart,
                    size: 22,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ),

              //  porduct_pricing_discounts
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 18.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 3,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 21.0),
                              child: Text(
                                "Rs.",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Text(
                              widget.itemClass.totalPrice, //price
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                              ),
                            ),
                          ],
                        )),

                    // off price amount
                    Expanded(
                        flex: 3,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "(Rs.",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.red,
                                  // color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              widget.itemClass.discountAmount + ")",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red,
                                // color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )),

                    // odiscount percentage
                    Expanded(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    " - " + discountPercent + "% OFF",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),

              // product_description_add_options
              Card(
                elevation: 0,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: Text(
                            "Product details",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      // items_add_btns
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: IconButton(
                                  icon: (Icon(FontAwesomeIcons.minusSquare)),
                                  onPressed: () {
                                    setState(() {
                                      subCount();
                                    });
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 26,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: Colors.blueGrey,
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Center(
                                child: Text(
                                  counter.toString(),
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Center(
                                child: IconButton(
                                  icon: (Icon(FontAwesomeIcons.plusSquare)),
                                  onPressed: () {
                                    setState(() {
                                      addCount();
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // product_atttributes_delivery_services
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            showProductSpec(context);
                          },
                          child: Card(
                            elevation: 0,
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      height: 30,
                                      child: Text(
                                        "Specifications",
                                        style: TextStyle(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        FontAwesomeIcons.angleRight,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(),
                        Card(
                          elevation: 0,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    height: 30,
                                    child: Text(
                                      "Delivery",
                                      style: TextStyle(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      FontAwesomeIcons.angleRight,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                        Card(
                          elevation: 0,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    height: 30,
                                    child: Text(
                                      "Services",
                                      style: TextStyle(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      FontAwesomeIcons.angleRight,
                                      size: 16,
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

              //store_info_ratings
              Card(
                elevation: 0,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      // store_profile_shortcut
                      Row(
                        children: <Widget>[
                          // store_logo
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                height: 60,
                                child: Image.network(
                                  "https://assets1.risnews.com/styles/content_sm/s3/2018-08/macys%20teaser%208-23-18.jpg?itok=RIIuMRl_",
                                  fit: BoxFit.scaleDown,
                                ),
                                // ),
                              ),
                            ),
                          ),
                          // store_title
                          Expanded(
                            flex: 7,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  height: 60,
                                  width: 120,
                                  // color: Colors.blue,
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Nepal Converse Store",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // follow_option
                          Expanded(
                            flex: 2,
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    "Follow",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // ratings_delivery_percentage_stats
                      Row(
                        children: <Widget>[
                          // positive_sellers_ratings_percent
                          Expanded(
                            flex: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18.0, bottom: 20.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "80%",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Text(
                                      "Positive seller ratings",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // middle_seperator_bar
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 50,
                              color: Colors.grey,
                            ),
                          ),
                          // ontime_delivery_percent
                          Expanded(
                            flex: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 18.0, bottom: 20.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "93%",
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 30,
                                      ),
                                    ),
                                    Text(
                                      "On time delivery",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // view_store_btn
                      FlatButton(
                        textTheme: ButtonTextTheme.accent,
                        onPressed: () {},
                        child: Text(
                          "Visit store",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // product_description
              Card(
                elevation: 0,
                child: Container(
                  child: Row(
                    children: <Widget>[],
                  ),
                ),
              ),

              // similar_products
              SimilarItemsCard(),

              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
