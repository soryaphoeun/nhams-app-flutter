import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nhams_app/Screens/NavigatorScreen.dart';
import 'package:nhams_app/Screens/MapScreen.dart';

class RestaurantsScreen extends StatelessWidget {
  RestaurantsScreen();

  @override
  Widget build(BuildContext context) {
    List<Container> menuList = [
      {"label": "Filter", "icon": Icons.filter_list},
      {"label": "Ranking", "icon": null},
      {"label": "View", "icon": null},
      {"label": "Price", "icon": null},
    ]
        .map(
          (item) => new Container(
            height: 60,
            padding: EdgeInsets.all(4),
            alignment: Alignment.center,
            child: new Card(
              child: Row(children: <Widget>[
                new Icon(
                  item["icon"],
                ),
                new Text(
                  item["label"],
                  style: TextStyle(fontSize: 12),
                )
              ]),
            ),
          ),
        )
        .toList();

    List<Container> restaurantList = [
      {
        "image": "assets/images/recommend/01.jpg",
        "distanceNumber": "1.5 km",
        "restaurantName": "Pizza and Beef Big Burger",
        "starIcon": Icons.star,
        "starRatingNumber": "4.0",
        "viewNumber": "88",
        "ratingNumber": "88",
        "reviewNumber": "88",
        "kindOfFood": "Dessert",
        "location": "Phnom Penh",
        "status": "Open Now"
      },
      {
        "image": "assets/images/recommend/01.jpg",
        "distanceNumber": "1.5 km",
        "restaurantName": "Pizza and Beef Big Burger",
        "starIcon": Icons.star,
        "starRatingNumber": "4.0",
        "viewNumber": "88",
        "ratingNumber": "88",
        "reviewNumber": "88",
        "kindOfFood": "Dessert",
        "location": "Phnom Penh",
        "status": "Open Now"
      },
      {
        "image": "assets/images/recommend/01.jpg",
        "distanceNumber": "1.5 km",
        "restaurantName": "Pizza and Beef Big Burger",
        "starIcon": Icons.star,
        "starRatingNumber": "4.0",
        "viewNumber": "88",
        "ratingNumber": "88",
        "reviewNumber": "88",
        "kindOfFood": "Dessert",
        "location": "Phnom Penh",
        "status": "Open Now"
      },
      {
        "image": "assets/images/recommend/01.jpg",
        "distanceNumber": "1.5 km",
        "restaurantName": "Pizza and Beef Big Burger",
        "starIcon": Icons.star,
        "starRatingNumber": "4.0",
        "viewNumber": "88",
        "ratingNumber": "88",
        "reviewNumber": "88",
        "kindOfFood": "Dessert",
        "location": "Phnom Penh",
        "status": "Open Now"
      },
      {
        "image": "assets/images/recommend/01.jpg",
        "distanceNumber": "1.5 km",
        "restaurantName": "Pizza and Beef Big Burger",
        "starIcon": Icons.star,
        "starRatingNumber": "4.0",
        "viewNumber": "88",
        "ratingNumber": "88",
        "reviewNumber": "88",
        "kindOfFood": "Dessert",
        "location": "Phnom Penh",
        "status": "Open Now"
      },
    ]
        .map(
          (item) => new Container(
            // padding: EdgeInsets.all(4),
            // alignment: Alignment.center,
            // child: new Card(
            child: Row(children: <Widget>[
              Container(
                // height: 100,
                // width: 100,
                child: Image.asset(
                  item["image"],
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                ),
              ),

              // Container(
              Container(
                margin: EdgeInsets.all(2.0),
                child: Column(children: <Widget>[
                  new Row(children: <Widget>[
                    new Text(
                      item["restaurantName"],
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 16),
                    ),
                    new Text(
                      item["distanceNumber"],
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 11),
                    ),
                  ]),
                  new Row(children: <Widget>[
                    new Container(
                      child: Icon(
                        item["starIcon"],
                      ),
                    ),
                    new Icon(
                      item["starIcon"],
                    ),
                    new Icon(
                      item["starIcon"],
                    ),
                    new Icon(
                      item["starIcon"],
                    ),
                    new Icon(
                      item["starIcon"],
                    ),
                    new Text(
                      item["starRatingNumber"],
                      // textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 11),
                    ),
                    new Icon(
                        // item["starIcon"],
                        Icons.more_vert),
                    new Icon(
                        // item["starIcon"],
                        Icons.visibility),
                    new Text(
                      item["viewNumber"],
                      // textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 12),
                    ),
                    new Text(
                      "Views",
                      // textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 12),
                    ),
                  ]),
                  new Row(children: <Widget>[
                    new Text(
                      item["ratingNumber"],
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 11),
                    ),
                    new Text(
                      "Rating",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 11),
                    ),
                    new Icon(Icons.more_vert),
                    new Text(
                      item["reviewNumber"],
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 11),
                    ),
                    new Text(
                      "Review",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 11),
                    ),
                  ]),
                  new Row(children: <Widget>[
                    new Icon(
                      Icons.restaurant,
                    ),
                    new Text(
                      item["kindOfFood"],
                      // textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 10),
                    ),
                    new Icon(
                        // item["starIcon"],
                        Icons.more_vert),
                    new Icon(
                        // item["starIcon"],
                        Icons.location_on),
                    new Text(
                      item["location"],
                      // textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 10),
                    ),
                    new Text(
                      item["status"],
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 12, color: Colors.green),
                    ),
                  ]),
                ]),
              )
              // Column(
              //   children: <Widget>[
              //       new Row(
              //         children: <Widget>[
              //           new Text(
              //             item["restaurantName"],
              //             textAlign: TextAlign.start,
              //             style: TextStyle(fontSize: 16),
              //           ),
              //           new Text(
              //             item["distanceNumber"],
              //             textAlign: TextAlign.end,
              //             style: TextStyle(fontSize: 11),
              //           ),
              //         ]
              //       ),
              //       new Row(
              //           children: <Widget>[
              //             new Icon(
              //               item["starIcon"],
              //             ),
              //             new Icon(
              //               item["starIcon"],
              //             ),
              //             new Icon(
              //               item["starIcon"],
              //             ),
              //             new Icon(
              //               item["starIcon"],
              //             ),
              //             new Icon(
              //               item["starIcon"],
              //             ),
              //             new Text(
              //               item["starRatingNumber"],
              //               // textAlign: TextAlign.end,
              //               style: TextStyle(fontSize: 11),
              //             ),
              //             new Icon(
              //               // item["starIcon"],
              //               Icons.more_vert
              //             ),
              //             new Icon(
              //               // item["starIcon"],
              //                 Icons.visibility
              //             ),
              //             new Text(
              //               item["viewNumber"],
              //               // textAlign: TextAlign.end,
              //               style: TextStyle(fontSize: 12),
              //             ),
              //             new Text(
              //               "Views",
              //               // textAlign: TextAlign.end,
              //               style: TextStyle(fontSize: 12),
              //             ),
              //           ]
              //       ),
              //       new Row(
              //           children: <Widget>[
              //             new Text(
              //               item["ratingNumber"],
              //               textAlign: TextAlign.start,
              //               style: TextStyle(fontSize: 11),
              //             ),
              //             new Text(
              //               "Rating",
              //               textAlign: TextAlign.end,
              //               style: TextStyle(fontSize: 11),
              //             ),
              //             new Icon(
              //               Icons.more_vert
              //             ),
              //             new Text(
              //               item["reviewNumber"],
              //               textAlign: TextAlign.start,
              //               style: TextStyle(fontSize: 11),
              //             ),
              //             new Text(
              //               "Review",
              //               textAlign: TextAlign.end,
              //               style: TextStyle(fontSize: 11),
              //             ),
              //           ]
              //       ),
              //       new Row(
              //         children: <Widget>[
              //           new Icon(
              //             Icons.restaurant,
              //           ),
              //           new Text(
              //             item["kindOfFood"],
              //             // textAlign: TextAlign.end,
              //             style: TextStyle(fontSize: 11),
              //           ),
              //           new Icon(
              //             // item["starIcon"],
              //               Icons.more_vert
              //           ),
              //           new Icon(
              //             // item["starIcon"],
              //               Icons.location_on
              //           ),
              //           new Text(
              //             item["location"],
              //             // textAlign: TextAlign.end,
              //             style: TextStyle(fontSize: 12),
              //           ),
              //           new Text(
              //             item["status"],
              //             // textAlign: TextAlign.end,
              //             style: TextStyle(fontSize: 12),
              //           ),
              //         ]
              //     ),
              //     ]
              // ),
              // ),
            ]),
            // ),
          ),
        )
        .toList();

    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          title: new Container(
              // padding: EdgeInsets.all(8),
              // width: 260,
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: TextField(
                cursorColor: Colors.redAccent,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(6),
                  border: OutlineInputBorder(),
                  // labelText: 'Enter Name Here',
                  hintText: 'Search',
                ),
                autofocus: false,
              )),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(
                  Icons.vpn_lock,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapScreen()),
                  );
                })
          ],
        ),
        body: Column(children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 12),
              alignment: Alignment.center,
              height: 40,
              child: Row(
                children: List<Expanded>.generate(
                    4, (int index) => Expanded(child: menuList[index])),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0, top: 10.0, bottom: 15.0),
            alignment: Alignment.centerLeft,
            child: new Text(
              "3 restaurants found",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            height: 450,
            child: new ListView(
                // crossAxisCount: 1,
                // crossAxisSpacing: 1,
                // mainAxisSpacing: 1,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: List<Container>.generate(
                    5,
                    (int index) => Container(
                        margin: const EdgeInsets.all(8.0),
                        height: 100,
                        width: double.infinity,
                        child: restaurantList[index]))),

            // child: ListView.builder(
            //     itemCount: restaurantList.length,
            //     itemBuilder: (context, index) {
            //       final item = restaurantList[index];
            //
            //       return ListTile(
            //         title: item.child(context),
            //         subtitle: item.buildSubtitle(context),
            //       );
            //   },
            // ),
          ),
        ]));
  }
}
