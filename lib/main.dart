import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nhams_app/Constant/Constant.dart';
import 'package:nhams_app/Screens/NavigatorScreen.dart';
import 'package:nhams_app/Screens/RestaurantsScreen.dart';
import 'package:nhams_app/Screens/ShopScreen.dart';
import 'package:nhams_app/Screens/MapScreen.dart';
import 'package:nhams_app/Screens/SplashScreen.dart';

main() {
  runApp(new MaterialApp(
    title: 'FluterBottemNavigationView',
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
        accentColor: Colors.black,
        indicatorColor: Colors.black,
        highlightColor: Colors.black,
        bottomAppBarColor: Colors.black,
        primaryColor: Color(0xFFffffff),
        primaryColorDark: Color(0xffffff)),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      HOME_SCREEN: (BuildContext context) => new NavigatorScreen(),
      ANIMATED_SPLASH: (BuildContext context) => new SplashScreen(),
      SHOP_CONTAINER_SCREEN: (BuildContext context) => new ShopScreen(),
      RESTAURANT_CONTAINER_SCREEN: (BuildContext context) =>
          new RestaurantsScreen(),
      MAP_CONTAINER_SCREEN: (BuildContext context) => new ShopScreen()
    },
  ));
}
