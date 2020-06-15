import 'package:e_cmrc_prototype/pages/categorized_product_page.dart';
import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  final icon;
  final title;
  IconCard({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CategorizedPage(
                        category: "category",
                      )));
        },
        child: Card(
          elevation: 0.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                //icons
                Center(
                  child: Icon(
                    icon,
                    // color: Colors.white70,
                    color: Theme.of(context).primaryColor,
                    size: 70,
                  ),
                ),

                // title_icon
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black87,
                      // color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
