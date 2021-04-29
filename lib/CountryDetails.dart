import 'package:flutter/material.dart';

class CountryDetails extends StatelessWidget {

  String countryName;
  int appBarColor;
  String date;
  String image;

  CountryDetails(
      {Key key, this.countryName, this.appBarColor, this.date, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(countryName + "   ${date}"),
        backgroundColor: Color(appBarColor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover)),
            )
          ],
        ),
      )
    );
  }
}
