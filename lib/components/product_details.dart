import 'package:flutter/material.dart';

void showProductSpec(context) {
  // String text;
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          builder: (BuildContext context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                children: <Widget>[
                  ExpansionTile(
                    title: Text("Model"),
                    children: <Widget>[
                      Text("SMG610F"),
                      Text("Samsung J7 Prime"),
                      Text("16gb internal storage"),
                      Text("3gb ram"),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      });
}
