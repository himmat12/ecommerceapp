import '../pages/store_main_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/components.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appbar..
        appBar: AppBar(
          // title: Text(
          //   "E-cmrce prototype",
          //   style: TextStyle(color: Theme.of(context).primaryColor),
          // ),
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

        //drawer..
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Username"),
                accountEmail: Text("user@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    "U",
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Theme.of(context).secondaryHeaderColor,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("Home"),
                leading: Icon(FontAwesomeIcons.home),
              ),
              ListTile(
                onTap: () {},
                title: Text("Category"),
                leading: Icon(FontAwesomeIcons.solidListAlt),
              ),
              ListTile(
                leading: Text(
                  "Orders & Settings",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              ListTile(
                onTap: () {},
                title: Text("My cart"),
                leading: Icon(FontAwesomeIcons.shoppingBasket),
              ),
              ListTile(
                onTap: () {},
                title: Text("Settings"),
                leading: Icon(FontAwesomeIcons.cog),
              ),
              ListTile(
                onTap: () {},
                title: Text("Log out"),
                leading: Icon(FontAwesomeIcons.signOutAlt),
              ),
            ],
          ),
        ),

        //body..
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // top_image_slider
              ImageSlider(
                  "https://laz-img-cdn.alicdn.com/images/ims-web/TB1yEkNHRr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
                  "https://laz-img-cdn.alicdn.com/images/ims-web/TB1A2F9Hlr0gK0jSZFnXXbRRXXa.jpg_1200x1200Q100.jpg_.webp",
                  "https://laz-img-cdn.alicdn.com/images/ims-web/TB1A2F9Hlr0gK0jSZFnXXbRRXXa.jpg_1200x1200Q100.jpg_.webp"),

              // categories_header
              ListTile(
                leading: Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                trailing: FlatButton(
                  textTheme: ButtonTextTheme.accent,
                  onPressed: () {},
                  child: Text(
                    "VIEW MORE >",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),
                  ),
                ),
              ),

              // categories_listview
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, top: 10.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Card(
                              color: Colors.white70,
                              elevation: 0.1,
                              shadowColor: Theme.of(context).primaryColor,
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Icon(
                                  FontAwesomeIcons.mobileAlt,
                                  color: Theme.of(context).primaryColor,
                                  size: 40,
                                ),
                              ),
                            ),
                            Text(
                              "Mobiles",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                // color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, top: 10.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Card(
                              color: Colors.white70,
                              elevation: 0.1,
                              shadowColor: Theme.of(context).primaryColor,
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Icon(
                                  FontAwesomeIcons.laptop,
                                  color: Theme.of(context).primaryColor,
                                  size: 40,
                                ),
                              ),
                            ),
                            Text(
                              "Laptops",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                // color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, top: 10.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Card(
                              color: Colors.white70,
                              elevation: 0.1,
                              shadowColor: Theme.of(context).primaryColor,
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Icon(
                                  FontAwesomeIcons.car,
                                  color: Theme.of(context).primaryColor,
                                  size: 40,
                                ),
                              ),
                            ),
                            Text(
                              "Cars",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                // color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, top: 10.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Card(
                              color: Colors.white70,
                              elevation: 0.1,
                              shadowColor: Theme.of(context).primaryColor,
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Icon(
                                  FontAwesomeIcons.motorcycle,
                                  color: Theme.of(context).primaryColor,
                                  size: 40,
                                ),
                              ),
                            ),
                            Text(
                              "Motorbikes",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                // color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6.0, top: 10.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Card(
                              color: Colors.white70,
                              elevation: 0.1,
                              shadowColor: Theme.of(context).primaryColor,
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Icon(
                                  FontAwesomeIcons.store,
                                  color: Theme.of(context).primaryColor,
                                  size: 40,
                                ),
                              ),
                            ),
                            Text(
                              "D-mart",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                // color: Theme.of(context).primaryColor,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // popular_items
              PopularItemsCard(),

              // new_arrival
              ListTile(
                leading: Text(
                  "New arrivals",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              ImageSlider(
                  "https://laz-img-cdn.alicdn.com/images/ims-web/TB1yEkNHRr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
                  "https://laz-img-cdn.alicdn.com/images/ims-web/TB1A2F9Hlr0gK0jSZFnXXbRRXXa.jpg_1200x1200Q100.jpg_.webp",
                  "https://laz-img-cdn.alicdn.com/images/ims-web/TB1A2F9Hlr0gK0jSZFnXXbRRXXa.jpg_1200x1200Q100.jpg_.webp"),

              // d-mart
              DmartItemsCard(),

              // collections
              CollectionsCard(),

              // // e-stores
              StoreCard(),
            ],
          ),
        ),
      ),
    );
  }
}
