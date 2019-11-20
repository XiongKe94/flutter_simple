import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridView {
  GestureDetector getStructuredGridCell(name, image) {
    return GestureDetector(
      onTap: () {
        print("onTap called.");
      },
      child: Card(
          elevation: 1.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Image(image: AssetImage('images/' + image)),
              Center(
                child: Text(name),
              )
            ],
          )),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisSpacing: 1,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisCount: 2,
      children: <Widget>[
        getStructuredGridCell("Facebook", "ic_osc_logo.png"),
        getStructuredGridCell("Twitter", "ic_osc_logo.png"),
        getStructuredGridCell("Instagram", "ic_osc_logo.png"),
        getStructuredGridCell("Linkedin", "ic_osc_logo.png"),
        getStructuredGridCell("Google Plus", "ic_osc_logo.png"),
        getStructuredGridCell("Launcher Icon", "ic_osc_logo.png"),
      ],
    );
  }
}
