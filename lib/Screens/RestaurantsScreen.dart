import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantsScreen extends StatelessWidget {
  RestaurantsScreen();

  @override
  Widget build(BuildContext context) {
    List<Container> menuList = [
      new Container(
        // height: 50,
        child:
        // new Card(
        Row(
            children: <Widget>[
              new Icon(
                Icons.filter_list,
                color: Colors.red,
              ),
              new Text(
                "Filter",
              )
            ]
        ),
      ),
      new Container(
        // height: 50,
        child:
        // new Card(
        Column(
            children: <Widget>[
              // new Icon(
              //   Icons.favorite,
              //   color: Colors.red,
              // ),
              new Text(
                "Ranking",
              )
            ]
        ),
      ),
      new Container(
        // height: 50,
        child:
        // new Card(
        Column(
            children: <Widget>[
              // new Icon(
              //   Icons.add_location,
              //   color: Colors.red,
              // ),
              new Text(
                "View",
              )
            ]
        ),
      ),
      new Container(
        // height: 50,
        child:
        // new Card(
        Column(
            children: <Widget>[
              // new Icon(
              //   Icons.add_location,
              //   color: Colors.red,
              // ),
              new Text(
                "Price",
              )
            ]
        ),
      ),

    ];

    return new Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.arrow_back), onPressed: null),
            new IconButton(
                icon: new Icon(Icons.search), onPressed: () {}),
            new IconButton(
                icon: new Icon(Icons.location_on), onPressed: () {})
          ],
        ),
        body: Column(
            children: <Widget>[
              // crossAxisAlignment: CrossAxisAlignment.start,
              // Container(
              //   child: new Image.asset(
              //     "assets/images/03.jpeg",
              //     fit: BoxFit.cover,
              //     height: 220,
              //     width: double.infinity,
              //     alignment: Alignment.center,
              //   ),
              // ),

              Flexible(
                flex: 1,
                child: new GridView.count(
                    crossAxisCount: 4,
                    // mainAxisSpacing: 1.0,
                    // shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: List < Container >.generate(
                        4, (int index) =>
                        Container(
                            height: 50,
                            child: menuList[index]
                        )
                    )
                ),
              ),

              // Container(
              //   margin: const EdgeInsets.all(5.0),
              //   child:  new Text(
              //     "Recommend",
              //     textAlign: TextAlign.left,
              //     style: TextStyle(fontWeight:FontWeight.bold, fontSize: 17),
              //   ),
              // ),

              // Flexible(
              //   child: new GridView.count(
              //       crossAxisCount: 1,
              //       mainAxisSpacing: 1.0,
              //       shrinkWrap: true,
              //       scrollDirection: Axis.horizontal,
              //       children: List < Container >.generate(
              //           5, (int index) =>
              //           Container(
              //               margin: const EdgeInsets.only(left:5.0),
              //               height: 80,
              //               width: 80,
              //               child: recommendImagesList[index]
              //           )
              //       )
              //   ),
              // ),

              // Container(
              //   margin: const EdgeInsets.all(10.0),
              //   child:  new Text(
              //     "Coupon",
              //     textAlign: TextAlign.left,
              //     style: TextStyle(fontWeight:FontWeight.bold, fontSize: 17),
              //   ),
              // ),

              // Flexible(
              //   child: new GridView.count(
              //       crossAxisCount: 1,
              //       mainAxisSpacing: 1.0,
              //       shrinkWrap: true,
              //       scrollDirection: Axis.horizontal,
              //       children: List < Container >.generate(
              //           5, (int index) =>
              //           Container(
              //               margin: const EdgeInsets.only(left:5.0),
              //               height: 80,
              //               width: 80,
              //               child: couponImagesList[index]
              //           )
              //       )
              //   ),
              // )
            ]
        )
    );

  }

}