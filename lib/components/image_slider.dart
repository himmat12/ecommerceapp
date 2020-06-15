import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// image_slider costum widget
class ImageSlider extends StatelessWidget {
  final image1;
  final image2;
  final image3;

  ImageSlider(this.image1, this.image2, this.image3);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 2.0, left: 8.0, right: 8.0, bottom: 8.0),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
          boxFit: BoxFit.fill,
          showIndicator: false,
          animationCurve: Curves.linear,
          animationDuration: Duration(milliseconds: 900),
          images: [
            NetworkImage(image1),
            NetworkImage(image2),
            NetworkImage(image3),
          ],
        ),
      ),
    );
  }
}
