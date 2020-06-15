import 'package:e_cmrc_prototype/model/store_main_class.dart';
import 'package:e_cmrc_prototype/pages/store_main_page.dart';
import 'package:flutter/material.dart';
import '../pages/store_page.dart';

// store_card costom widget
class StoreCard extends StatefulWidget {
  @override
  _StoreCardState createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  List<Store> stores = [
    Store(
      title: "Center mall store",
      contact: "9860786754",
      address: "Dharan",
      location: "Sunsari",
      email: "info@store.com",
      website: "www.storedomain@.com",
      logo:
          "https://logos-download.com/wp-content/uploads/2017/01/Circle_Food_Store_logo.png",
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1jAa0Jlr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
    ),
    Store(
      title: "Bhatbhateni store",
      contact: "9860786754",
      address: "Dharan",
      location: "Sunsari",
      email: "info@store.com",
      website: "www.storedomain@.com",
      logo:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/BJs_Wholesale_Club_Logo.svg/1200px-BJs_Wholesale_Club_Logo.svg.png",
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1g5yHIYj1gK0jSZFuXXcrHpXa.jpg_1200x1200Q100.jpg_.webp",
    ),
    Store(
      title: "Baraha store",
      contact: "9860786754",
      address: "Dharan",
      location: "Sunsari",
      email: "info@store.com",
      website: "www.storedomain@.com",
      logo:
          "https://dcassetcdn.com/design_img/2101902/539132/539132_11166188_2101902_4acfb01b_image.jpg",
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1B6C0Jlr0gK0jSZFnXXbRRXXa.jpg_1200x1200.jpg",
    ),
    Store(
      title: "CGorkha store",
      contact: "9860786754",
      address: "Dharan",
      location: "Sunsari",
      email: "info@store.com",
      website: "www.storedomain@.com",
      logo: "https://logonoid.com/images/walmart-logo.png",
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1jAa0Jlr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      height: 220,
      child: Column(
        children: <Widget>[
          // header...
          ListTile(
            leading: Text(
              "E-store",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            trailing: FlatButton(
              textTheme: ButtonTextTheme.accent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StoreMainPage()));
              },
              child: Text(
                "SHOP MORE >",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0),
              ),
            ),
          ),

          // items
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 170, //items card height
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stores.length,
                  itemBuilder: (context, index) {
                    return Wrap(
                      alignment: WrapAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print(stores[index].title);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => StorePage(
                                          store: stores[index],
                                        )));
                          },
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
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                                child: Image.network(
                                                  stores[index].logo, //image
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
                                            stores[index].title, //title
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
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
