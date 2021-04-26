import 'package:flutter/material.dart';
import 'package:random_city/CountryDetails.dart';
import 'package:random_city/model/CountryModel.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyWidget(),
    );
  }
}



class HomePage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {

  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {


  List<Country> countrylist = [];
  String gdanskPic = "https://www.google.com/maps/vt/data=KGhGc3xm-9o8RaKAGvlNJiyM4o8I7GviViL4tClRwqA2CcxS-lBgqjm1Xfat8modN076rC_RjIRY3gx5MXkWQyEZH_-Ymp9tdPPP7KUw5HsDM24ASsBqc4F107lpfMIeKYax6tzRnHREKqIRkzk_l6ntofXXB3ukjtrQLRjanuP671qBCN6N8y12CQAbp1STM2Qp3XAX2hVO1Ij_Ir-ZADq1TtPfw0ghUDxWJet8GcwyOY2T7a2CjdU7";
  String warszawaPic = "https://www.google.com/maps/vt/data=f2piO1svX5H4KK6TRkFjeNG3kBUEmpGl6FIjT4zexDSsjl1UENc4h9qaUMm9sOY3mQWTJh4Z__4Ql036hHFmRCJDntx3R6YMWEom6ZN7ngTBzORb7_O2LiMmN_ygmqgQXdMpkVeOGRga03VJqHVrl565jeGcEWB1EBQqRCMLvP_FGdKMyO1hToKp9LZBNhZ8nVxH0eMFOTyLxOFjManFNmLvKSZv4617ts7irGiCAYMEE9chD3S1Qhso";
  String poznanPic = "https://www.google.com/maps/vt/data=T6WxVHf28-YEbQO4vFhCDiE0IgOJnMkiJm1EMHPwVSLWKJdIYQRrBHy5hWphWcGXAXz2BiC12qtiwFIfcSkAq0AZ0M9scMBGZpp5WDT5AcLlYBbbI7pYXuocmRSGL-e-ln7aLAvnUPpTsGKIeA67nzRHfiljz3-SfExKEBMGogqZqyvQddAYf7nBgZaa5BAN7KnFpXRA-oj56Xv6antilXVjNTzKoputYs81L5PTfv5AXZfFu1hJMQ3b";
  String bialystokPic = "https://www.google.com/maps/vt/data=yAWTw-op4g005K6BBG7ls1AGi1lvBwNuk-h6TdPNX6G8V3CUOSE82CUhjjiTxPHX-H7e-QuOy3B_ng3DY2zMLbV3kmCUt6yJBP36jzxSfyOEZAKFayhmt-iRhVpP6wXRrFc19eENCwbuuNBeWKpH3Je5mN0Ey_lfNmFsOD4Ifb1AkwsAqdDux9pbwU47u7Rg0v68SEADFJ8mLV3nFhmTPWCWDpLXRtQVRql3PuQNIl457hZjsxtiGcpi";
  String wroclawPic = "https://www.google.com/maps/vt/data=7EDD6gBaPTdQhXr2pkswwmIk8_VTFY52wof6ReIqBpyCsFXo4or152eFEUytj3uaFuF3Igb3VSwb_MHSI7oo5wwheGg5RELyqMsMkKbm_zpF47XZsOuBVKrrFzqxUReEvCtiNXL50UZlQ4YAYYePuEEsFUMDu-HO6AX8j6nH2c1aKPaOPK8FBomNYgDltn3hEZSkk7chcTaO7NQa1qdXIF7BW1pQ2g-jWLZWlwWyKX2ku4S-4t-az1j2";
  String katowicePic = "https://www.google.com/maps/vt/data=ZOlNv-UqUsrM1Tr8L4aSW64lJfwKufbeYBuwx5RwEl3ZENwCHkMgfQhG2TzHhpLdk_qscH8bEC_vbjIlih7C04ZeqpcrJ5Jdm1fMNUPCs3mkaRzZEIUc0oK1mNmq6Sc7-JImd8KRAE6un-UrxWRfyXV4l-FP-qDG1yKUGXCO33DqOkuTH-QrImMtMMleDMV4irC_c8J4Q2C9aU_Ghs7o2ODKQyFoJouBIVqQQwPLKtGpcGFKcGhR-hIO";
  String krakowPic = "https://www.google.com/maps/vt/data=EfuVFRdMoKteRYuN1v2UGu48rSn6lLnczd4-r5c3IjkHAKsn367iE-dW73rQv09HKnu5rGRIiwVz3PanyLMsTH-Nwls0Bvor67cm3La7xCscNNOOncU05xErj6tnoJbXu57mJMA41ROECJYBEIdddhNSEgdjgKzjaU8Bk_rC3O0czNM9ly8o7zOVshtnNONWfNLAiLQkgq7H5TjtV9qVXFDO2ESihFiVUen31YGiJHJUf8E";

  int yellow = 0xffe6e393;
  int green = 0xff93e694;
  int blue = 0xff93dee6;
  int red = 0xffe69393;
  int black = 0xff454141;
  int white = 0xffe6e1e1;


  void randomCity(){

    List <int> colors = [yellow,green,blue,red,black,white];
    List <String> countryNames = ["Gdańsk","Warszawa","Poznań","Białystok","Wrocław","Katowice","Kraków"];
    List <String> countryImages = [gdanskPic,warszawaPic,poznanPic,bialystokPic,wroclawPic,katowicePic,krakowPic];

    Random random = new Random();
    DateTime now = new DateTime.now();



    int randomCity = random.nextInt(countryNames.length);
    int randomColor = random.nextInt(colors.length);

    countrylist.add(Country(
        countryNames[randomCity], countryImages[randomCity],
        colors[randomColor], now.toString()));

    countrylist.sort((a,b) => a.name.compareTo(b.name));

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {


    Future.delayed(Duration(seconds: 5), (){
      randomCity();
    });

    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0.0,
          title: Text(
            "Random City App",
            style: TextStyle(fontSize: 20.0, color: Colors.black),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {})
          ],
        ),
        body: ListView.builder(
          itemCount: countrylist.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CountryDetails(countryName: countrylist[index].name,
                        appBarColor: countrylist[index].color, date: countrylist[index].date, image: countrylist[index].image,))
                  );
                },
                title: Text(countrylist[index].name + "   ${countrylist[index].date}"),
                tileColor: Color(countrylist[index].color),
              ),
            );
          },
        ));
  }

  @override
  void initState() {
    randomCity();
  }
}

