import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nhams_app/Screens/RestaurantsScreen.dart';
import 'package:nhams_app/Screens/ShopScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> viewContainer = [
    ShopScreen(),
    RestaurantsScreen(),
    ShopScreen(),
    ShopScreen()
  ];

  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return new Scaffold(
      // appBar: AppBar(
      //   title: const Text("Gallery"),
      //   actions: <Widget>[
      //     new IconButton(
      //         icon: new Icon(Icons.search), onPressed: () {}),
      //     new IconButton(
      //         icon: new Icon(Icons.more_vert), onPressed: () {})
      //   ],
      // ),
      body: viewContainer[currentIndex],
      bottomNavigationBar: new BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.account_balance),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.camera),
              title: Text("Coupon"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.favorite),
              title: Text("Favorite"),
            ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.supervised_user_circle),
              title: Text("Me"),
            )
          ]),
    );
  }
}
