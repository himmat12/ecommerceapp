import 'package:e_cmrc_prototype/components/icons_card.dart';
import 'package:e_cmrc_prototype/model/store_main_class.dart';
import 'package:e_cmrc_prototype/pages/store_profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/components.dart';

// void main ()=> runApp(StorePage());

class StorePage extends StatefulWidget {
  Store store;
  StorePage({@required this.store});

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // body..
        body: CustomScrollView(
          slivers: <Widget>[
            // appbar..
            SliverAppBar(
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              expandedHeight: 180,
              title: Text(
                widget.store.title,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
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
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  widget.store.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            // categories
            SliverList(
              delegate: SliverChildListDelegate([
                ListTile(
                  leading: Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  trailing: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.infoCircle,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => StoreProfile()));
                      }),
                ),
              ]),
            ),

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

            //
          ],
        ),
      ),
    );
  }
}
