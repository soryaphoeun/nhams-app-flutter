import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nhams_app/Screens/RestaurantsScreen.dart';

class ShopScreen extends StatelessWidget {
  ShopScreen();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemWidth = (size.width - kToolbarHeight - 24) / 2;
    final double itemHeight = size.height / 3;

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
            // elevation: 1.0,
            margin: EdgeInsets.all(5.0),
            child: new Image.asset(
              "assets/images/coupon/0$i.jpg",
              fit: BoxFit.cover,
              height: 80,
              width: 200,
              // alignment: Alignment.center,
            ),
          ),
        ),
    ];

    return new Scaffold(
        body: Column(children: <Widget>[
      // crossAxisAlignment: CrossAxisAlignment.start,
      Stack(
        children: [
          Container(
            child: new Image.asset(
              "assets/images/03.jpeg",
              fit: BoxFit.cover,
              height: 260,
              width: double.infinity,
              alignment: Alignment.center,
            ),
          ),
          Container(
            padding: EdgeInsets.all(70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60.0),
                      child: Image.asset(
                        "assets/icon/logo.jpg",
                      ),
                    )),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "ចង់ញ៉ាំ",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                  width: size.width,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Search restaurants",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )))
        ],
      ),

      Flexible(
        flex: 1,
        child: Container(
          alignment: Alignment.center,
          height: 65,
          child: _buildTopMenu(context),
          margin: EdgeInsets.only(bottom: 12),
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

      Container(
        child: Flexible(
          child: new GridView.count(
              padding: EdgeInsets.all(2),
              crossAxisCount: 1,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List<Container>.generate(
                  5,
                  (int index) => Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      height: 80,
                      width: 80,
                      child: recommendImagesList[index]))),
        ),
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
            childAspectRatio: (itemWidth / itemHeight),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: List<Container>.generate(
                4,
                (int index) => Container(
                    margin: const EdgeInsets.only(left: 2.0, top: 5.0),
                    // height: 200,
                    // width: 80,
                    child: couponImagesList[index]))),
      )
    ]));
  }

  _buildTopMenu(context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 5.0,
                offset: Offset(0.0, 0.75))
          ],
          color: Colors.white,
        ),
        child: Row(children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: 12),
            child: new InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RestaurantsScreen(),
                ));
              },
              // height: 50,
              child:
                  // new Card(
                  Column(children: <Widget>[
                new Icon(
                  Icons.my_location,
                  color: Colors.red,
                ),
                new Text(
                  'Near Me',
                  style: TextStyle(fontSize: 12),
                )
              ]),
            ),
          )),
          VerticalDivider(
            color: Colors.grey,
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: 12),
            child: new InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RestaurantsScreen(),
                ));
              },
              // height: 50,
              child:
                  // new Card(
                  Column(children: <Widget>[
                new Icon(
                  Icons.restaurant,
                  color: Colors.red,
                ),
                new Text(
                  'Type of food',
                  style: TextStyle(fontSize: 12),
                )
              ]),
            ),
          )),
          VerticalDivider(
            color: Colors.grey,
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(top: 12),
                child: new InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => RestaurantsScreen(),
                    ));
                  },
                  // height: 50,
                  child:
                      // new Card(
                      Column(children: <Widget>[
                    new Icon(
                      Icons.location_on,
                      color: Colors.red,
                    ),
                    new Text(
                      'Location',
                      style: TextStyle(fontSize: 12),
                    )
                  ]),
                )),
          ),
        ]));
  }
}
