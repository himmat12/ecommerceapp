import 'package:e_cmrc_prototype/components/progress_bar.dart';
import 'package:e_cmrc_prototype/model/store_main_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StoreProfile extends StatefulWidget {
  @override
  _StoreProfileState createState() => _StoreProfileState();
}

class _StoreProfileState extends State<StoreProfile> {
  List<Store> stores = [
    Store(
      title: "Bhatbhateni DEPT. Store",
      logo:
          "https://dcassetcdn.com/design_img/2101902/539132/539132_11166188_2101902_4acfb01b_image.jpg",
      city: "Dharan",
      location: "Putali line",
      address: "4600 Fake Ave Apartment 326",
      contact: "9860867234",
      email: "info@domain.com",
      website: "www.web@domain.com",
      positiveRating: 12,
      neutralRatings: 5,
      negativeRatings: 3,
      productReview:
          " Lorem Ipsum has been the industry's standard dummy text ever since the specimen book. It has survived not only five centuries.",
      reviewedBy: "andrew montage",
      reviewedDate: DateTime.now().toString(),
      sellerReview:
          "Dunelm love homes and are just as obsessed by the products that go in them. They are the UK's No. 1 homewares retailer offering their customers a wide range of products to enhance every room in their home. ",
    ),
    Store(
      title: "Baraha DEPT. Store",
      logo:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQen-C9xmrGF4t2x9l0zOldOl7CTBaBVgiypaFxlzmB7So-5-5&usqp=CAU",
      city: "Dharan",
      location: "Vanuchowk line",
      address: "4600 Fake Ave Apartment 326",
      contact: "9867564534",
      email: "info@domain.com",
      website: "www.web@domain.com",
      positiveRating: 17,
      neutralRatings: 2,
      negativeRatings: 4,
      productReview:
          " Lorem Ipsum has been the industry's standard dummy text ever since the specimen book. It has survived not only five centuries.",
      reviewedBy: "andrew montage",
      reviewedDate: DateTime.now().toString(),
      sellerReview:
          "Dunelm love homes and are just as obsessed by the products that go in them. They are the UK's No. 1 homewares retailer offering their customers a wide range of products to enhance every room in their home. ",
    ),
    Store(
      title: "Gorkha DEPT. Store",
      logo:
          "https://dcassetcdn.com/design_img/2101902/539132/539132_11166188_2101902_4acfb01b_image.jpg",
      city: "Dharan",
      location: "Vanuchowk",
      address: "4600 Fake Ave Apartment 326",
      contact: "9867890675",
      email: "info@domain.com",
      website: "www.web@domain.com",
      positiveRating: 10,
      neutralRatings: 2,
      negativeRatings: 4,
      productReview:
          " Lorem Ipsum has been the industry's standard dummy text ever since the specimen book. It has survived not only five centuries.",
      reviewedBy: "andrew montage",
      reviewedDate: DateTime.now().toString(),
      sellerReview:
          "Dunelm love homes and are just as obsessed by the products that go in them. They are the UK's No. 1 homewares retailer offering their customers a wide range of products to enhance every room in their home. ",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        // appbar..
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                iconSize: 16,
                visualDensity: VisualDensity.standard,
                // padding: EdgeInsets.only(right: 20.0),
                icon: Icon(FontAwesomeIcons.ellipsisV),
                onPressed: () {}),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "profile",
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
                  "Continue shoping",
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
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) => SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        // header_tile
                        Card(
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                // logo_profile
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      height: 55,
                                      child: Image.network(
                                        stores[1].logo,
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                ),

                                //  title_fllowers
                                Expanded(
                                  flex: 6,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        height: 55,
                                        width: 120,
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, top: 0.0),
                                          child: Column(
                                            children: <Widget>[
                                              // title
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 2.0),
                                                child: Text(
                                                  stores[1].title,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              // followers_badge
                                              Row(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              2.0),
                                                      child: Row(
                                                        children: <Widget>[
                                                          Text(
                                                            "1.2k  ",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                          Icon(
                                                            FontAwesomeIcons
                                                                .heart,
                                                            size: 13,
                                                            color: Colors.white,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //  follow_option
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 55,
                                    alignment: Alignment.bottomLeft,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).primaryColor,
                                            // color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  FontAwesomeIcons.plusCircle,
                                                  size: 14,
                                                  color: Colors.white,
                                                ),
                                                // Icon(
                                                //   FontAwesomeIcons.checkCircle,
                                                //   size: 14,
                                                //   color: Colors.white,
                                                // ),
                                                Text(
                                                  "  Follow",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
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

                        // ratings_ontime_delivery_percentage
                        Card(
                          elevation: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6),
                            height: 40,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "seller merits",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 0,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    // positive_sellers_ratings_percent
                                    Expanded(
                                      flex: 450,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 18.0, bottom: 20.0),
                                        child: Container(
                                          child: Column(
                                            children: <Widget>[
                                              // rating_percentage
                                              Text(
                                                "80%",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
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
                                              // total_no.of ratings & reviews
                                              Text(
                                                "503 total ratings",
                                                style: TextStyle(
                                                  fontSize: 12,
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
                                        height: 60,
                                        color: Colors.grey,
                                      ),
                                    ),

                                    // ontime_delivery_percent
                                    Expanded(
                                      flex: 450,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 18.0, bottom: 20.0),
                                        child: Container(
                                          child: Column(
                                            children: <Widget>[
                                              // delivery_percentage
                                              Text(
                                                "93%",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
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
                                              // total_no.of deliveries
                                              Text(
                                                "865 on time delivered",
                                                style: TextStyle(
                                                  fontSize: 12,
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

                                // seperator_line
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8.0),
                                  child: Divider(),
                                ),

                                // ratings_stats_progress_bars
                                Container(
                                  padding: EdgeInsets.only(top: 4),
                                  height: 100,
                                  child: Column(
                                    children: <Widget>[
                                      // posetive
                                      Row(
                                        children: <Widget>[
                                          // leading_text
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              height: 22,
                                              child: Text(
                                                "Positive",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ),
                                          // progress_bar
                                          Expanded(
                                            flex: 7,
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 22,
                                              child: ProgressBar(
                                                width: 200,
                                                percentage: 68,
                                              ),
                                            ),
                                          ),
                                          // trailing_text
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              height: 22,
                                              child: Text(
                                                "467",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      // neutral
                                      Row(
                                        children: <Widget>[
                                          // leading_text
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              height: 22,
                                              child: Text(
                                                "Neutral",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ),
                                          // progress_bar
                                          Expanded(
                                            flex: 7,
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 22,
                                              child: ProgressBar(
                                                width: 200,
                                                percentage: 22,
                                              ),
                                            ),
                                          ),
                                          // trailing_text
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              height: 22,
                                              child: Text(
                                                "35",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      // posetive
                                      Row(
                                        children: <Widget>[
                                          // leading_text
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              height: 22,
                                              child: Text(
                                                "Negative",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ),
                                          // progress_bar
                                          Expanded(
                                            flex: 7,
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 22,
                                              child: ProgressBar(
                                                width: 200,
                                                percentage: 10,
                                              ),
                                            ),
                                          ),
                                          // trailing_text
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              height: 22,
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // contacts_address_basic info
                        Card(
                          elevation: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6),
                            height: 40,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "seller details info",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 0,
                          child: Container(
                            padding: EdgeInsets.only(top: 12),
                            height: 190,
                            child:
                                // informations
                                Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    // left_side
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    FontAwesomeIcons.city,
                                                    size: 13,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Text(
                                                      "City",
                                                      style: TextStyle(
                                                        color: Colors.blueGrey,
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
                                    //  right_side
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              child: Text(
                                                "-  " + stores[index].city,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    // left_side
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .addressCard,
                                                    size: 13,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Text(
                                                      "Address",
                                                      style: TextStyle(
                                                        color: Colors.blueGrey,
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
                                    //  right_side
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              child: Text(
                                                "-  " + stores[index].address,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    // left_side
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .mapMarkedAlt,
                                                    size: 13,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Text(
                                                      "Location",
                                                      style: TextStyle(
                                                        color: Colors.blueGrey,
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
                                    //  right_side
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              child: Text(
                                                "-  " + stores[index].location,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.blueGrey,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    // left_side
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .addressBook,
                                                    size: 13,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Text(
                                                      "Contact",
                                                      style: TextStyle(
                                                        color: Colors.blueGrey,
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
                                    //  right_side
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "-  " +
                                                        stores[index].contact,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .externalLinkAlt,
                                                        size: 11,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        // color: Colors.blueGrey,
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
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    // left_side
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    FontAwesomeIcons
                                                        .envelopeOpenText,
                                                    size: 13,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Text(
                                                      "E-mail",
                                                      style: TextStyle(
                                                        color: Colors.blueGrey,
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
                                    //  right_side
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "-  " + stores[index].email,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: InkWell(
                                                      onTap: () {},
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .externalLinkAlt,
                                                        size: 11,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        // color: Colors.blueGrey,
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
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    // left_side
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(
                                                    FontAwesomeIcons.link,
                                                    size: 13,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Text(
                                                      "Website",
                                                      style: TextStyle(
                                                        color: Colors.blueGrey,
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
                                    //  right_side
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              height: 24,
                                              child: Row(
                                                children: <Widget>[
                                                  Text(
                                                    "-  " +
                                                        stores[index].website,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: InkWell(
                                                      onTap: () {
                                                        print(
                                                            "opening website");
                                                      },
                                                      child: Icon(
                                                        FontAwesomeIcons
                                                            .externalLinkAlt,
                                                        size: 11,
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        // color: Colors.blueGrey,
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        // reviews_by_costomers
                        Card(
                          elevation: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 6),
                            height: 40,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "seller products reviews",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              // review_posts_section
                              Card(
                                elevation: 0,
                                child: Container(
                                  padding: EdgeInsets.only(top: 6, bottom: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // review_header_part
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 6, bottom: 6),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            // left_side
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  // reviewedBy_username
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 6),
                                                    height: 22,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      stores[index].reviewedBy,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.blueGrey,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                  // icon
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 6),
                                                    height: 22,
                                                    child: Icon(
                                                      FontAwesomeIcons
                                                          .commentDots,
                                                      size: 11,
                                                      color: Colors.blueGrey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            // right_Side
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  // date_of_review
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                      right: 6,
                                                    ),
                                                    height: 22,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                      stores[index]
                                                          .reviewedDate,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blueGrey,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Divider(
                                        height: 0,
                                      ),

                                      // review_comment_part
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "-" + stores[index].productReview,
                                          textAlign: TextAlign.left,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            wordSpacing: 2,
                                            color: Colors.blueGrey,
                                            fontWeight: FontWeight.w300,
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

                        SizedBox(
                          height: 20,
                        ),
                        //
                      ],
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
