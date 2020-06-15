import 'package:e_cmrc_prototype/components/components.dart';
import 'package:e_cmrc_prototype/components/icons_card.dart';
import 'package:e_cmrc_prototype/model/store_main_class.dart';
import 'package:e_cmrc_prototype/pages/categorized_product_page.dart';
import 'package:e_cmrc_prototype/pages/store_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TestPage extends StatefulWidget {
  Store store;
  TestPage({this.store});

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
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
              "widget.category",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
            bottom: TabBar(tabs: [
              Text(
                "All",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              Text(
                "Categories",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              Text(
                "Profile",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ]),
          ),

          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // top_image_slider
                  ImageSlider(
                      "https://laz-img-cdn.alicdn.com/images/ims-web/TB1yEkNHRr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
                      "https://laz-img-cdn.alicdn.com/images/ims-web/TB1A2F9Hlr0gK0jSZFnXXbRRXXa.jpg_1200x1200Q100.jpg_.webp",
                      "https://laz-img-cdn.alicdn.com/images/ims-web/TB1A2F9Hlr0gK0jSZFnXXbRRXXa.jpg_1200x1200Q100.jpg_.webp"),
                 
                ],
              ),
            ),
            // tab2
            CustomScrollView(
              slivers: <Widget>[
                // catalog_categories
                SliverGrid.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    IconCard(
                      icon: FontAwesomeIcons.mobileAlt,
                      title: "Mobile & Phones",
                    ),
                    IconCard(
                      icon: FontAwesomeIcons.store,
                      title: "D-mart",
                    ),
                    IconCard(
                      icon: FontAwesomeIcons.laptop,
                      title: "Laptops & PC",
                    ),
                    IconCard(
                      icon: FontAwesomeIcons.car,
                      title: "Cars & Automotives",
                    ),
                    IconCard(
                      icon: FontAwesomeIcons.motorcycle,
                      title: "Bikes & Gears",
                    ),
                    IconCard(
                      icon: FontAwesomeIcons.listAlt,
                      title: "Othres",
                    ),
                  ],
                ),
              ],
            ),
            // tab3
            StoreProfile(),
          ]),
        ),
      ),
    );
  }
}
