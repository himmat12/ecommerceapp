import 'package:e_cmrc_prototype/model/store_main_class.dart';
import 'package:e_cmrc_prototype/pages/store_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/components.dart';

class StoreMainPage extends StatefulWidget {
  @override
  _StoreMainPageState createState() => _StoreMainPageState();
}

class _StoreMainPageState extends State<StoreMainPage> {
  List<Store> stores = [
    Store(
      title: "Bhatbhateni DEPT. Store",
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1jAa0Jlr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
      logo:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQen-C9xmrGF4t2x9l0zOldOl7CTBaBVgiypaFxlzmB7So-5-5&usqp=CAU",
      city: "Dharan",
      location: "Putali line",
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
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1B6C0Jlr0gK0jSZFnXXbRRXXa.jpg_1200x1200.jpg",
      logo:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQU2aPNY7qUVfYzC5ZwKbuy0H32PC2SXJyPbMvXx6zeriGI0L5Q&usqp=CAU",
      city: "Dharan",
      location: "Vanuchowk line",
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
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1g5yHIYj1gK0jSZFuXXcrHpXa.jpg_1200x1200Q100.jpg_.webp",
      logo:
          "https://mms.businesswire.com/media/20200108005182/en/765943/5/Pointr-logo.jpg",
      city: "Dharan",
      location: "Vanuchowk",
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
    Store(
      title: "Bhatbhateni DEPT. Store",
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1jAa0Jlr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
      logo:
          "https://www.perishablenews.com/wp-content/uploads/2019/11/r556.jpg",
      city: "Dharan",
      location: "Putali line",
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
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1B6C0Jlr0gK0jSZFnXXbRRXXa.jpg_1200x1200.jpg",
      logo:
          "https://dcassetcdn.com/design_img/2101902/539132/539132_11166188_2101902_4acfb01b_image.jpg",
      city: "Dharan",
      location: "Vanuchowk line",
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
      image:
          "https://laz-img-cdn.alicdn.com/images/ims-web/TB1g5yHIYj1gK0jSZFuXXcrHpXa.jpg_1200x1200Q100.jpg_.webp",
      logo:
          "https://cdn.freebiesupply.com/logos/large/2x/hyundai-department-store-1-logo-png-transparent.png",
      city: "Dharan",
      location: "Vanuchowk",
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
        // appbar..
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                iconSize: 20,
                visualDensity: VisualDensity.standard,
                padding: EdgeInsets.only(right: 0.0),
                icon: Icon(
                  FontAwesomeIcons.searchLocation,
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
            "e-stores",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        ),

        // body..
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // image_slider..
              ImageSlider(
                "https://laz-img-cdn.alicdn.com/images/ims-web/TB1lnG5H8r0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
                "https://laz-img-cdn.alicdn.com/images/ims-web/TB1kYdKIlr0gK0jSZFnXXbRRXXa.jpg_1200x1200Q100.jpg_.webp",
                "https://laz-img-cdn.alicdn.com/images/ims-web/TB1A5pKIlr0gK0jSZFnXXbRRXXa.png_1200x1200Q100.jpg_.webp",
              ),

              //stores_catalogs
              ListTile(
                leading: Text(
                  "Stores for you ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

              // stores_lists
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: stores.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StorePage(
                                    store: stores[index],
                                  )));
                    },
                    child: Container(
                      height: 126,
                      // color: Colors.blue,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: 116,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                    ),
                                    child: Container(
                                      width: 100,
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      height: 76,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          child: Image.network(
                                            stores[index].logo,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 12.0,
                                        right: 12.0,
                                        top: 0.0,
                                        bottom: 8.0),
                                    child: Text(
                                      stores[index].title,
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
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
