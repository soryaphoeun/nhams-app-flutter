import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen();

  @override
  Widget build(BuildContext context) {
    List<Container> menuList = [
      {"label": "Near Me", "icon": Icons.my_location},
      {"label": "Type of food", "icon": Icons.home},
      {"label": "Location", "icon": Icons.location_on},
    ]
        .map(
          (item) => new Container(
            // height: 50,
            child:
                // new Card(
                Column(children: <Widget>[
              new Icon(
                item["icon"],
                color: Colors.red,
              ),
              new Text(
                item["label"],
              )
            ]),
          ),
        )
        .toList();

    List<Container> recommendImagesList = [
      for (var i = 1; i < 6; i += 1)
        new Container(
          // height: 100,
          // width: 100,
          child: new Card(
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              // bottomRight: Radius.circular(10),
              // topRight: Radius.circular(10)
              // side: BorderSide(width: 5, color: Colors.green)
            ),
            // margin: EdgeInsets.all(5.0),
            child: new Image.asset(
              "assets/images/recommend/0$i.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              // alignment: Alignment.center,
            ),
          ),
        )
    ];

    List<Container> couponImagesList = [
      for (var i = 2; i < 6; i += 1)
        new Container(
          child: new Card(
            elevation: 1.0,
            margin: EdgeInsets.all(5.0),
            child: new Image.asset(
              "assets/images/coupon/0$i.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              // alignment: Alignment.center,
            ),
          ),
        ),
    ];

    return new Scaffold(
        backgroundColor: Color(0xFFeaeaea),
        body: Column(children: <Widget>[
          // crossAxisAlignment: CrossAxisAlignment.start,
          Stack(
            children: [
              Container(
                child: new Image.asset(
                  "assets/images/03.jpeg",
                  fit: BoxFit.cover,
                  height: 220,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
              ),
              Column(
                children: [
                  Text(
                    "data",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "data",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "data",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),

          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 12),
              alignment: Alignment.center,
              height: 60,
              child: Row(
                children: List<Expanded>.generate(
                    3, (int index) => Expanded(child: menuList[index])),
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 8.0, top: 10.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              "Recommend",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),

          Flexible(
            child: new GridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 1.0,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List<Container>.generate(
                    5,
                    (int index) => Container(
                        margin: const EdgeInsets.only(left: 5.0, top: 5.0),
                        height: 80,
                        width: 80,
                        child: recommendImagesList[index]))),
          ),

          Container(
            margin: const EdgeInsets.only(left: 8.0, top: 20.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              "Coupon",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),

          Flexible(
            child: new GridView.count(
                crossAxisCount: 1,
                mainAxisSpacing: 1.0,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List<Container>.generate(
                    4,
                    (int index) => Container(
                        margin: const EdgeInsets.only(left: 5.0, top: 5.0),
                        height: 80,
                        width: 80,
                        child: couponImagesList[index]))),
          )
        ]));
  }
}
