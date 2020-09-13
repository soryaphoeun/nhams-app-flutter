import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nhams_app/Screens/RestaurantsScreen.dart';
import 'package:nhams_app/Screens/ShopScreen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavigatorScreen extends StatefulWidget {
  @override
  NavigatorScreenState createState() => new NavigatorScreenState();
}

class NavigatorScreenState extends State<NavigatorScreen> {
  int currentIndex = 0;

  final List<Widget> viewContainer = [
    ShopScreen(),
    ShopScreen(),
    ShopScreen(),
    ShopScreen()
  ];
  PersistentTabController _tabController =
      PersistentTabController(initialIndex: 0);

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _tabController,
      screens: viewContainer,
      items: _buildBottomBarTab(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<PersistentBottomNavBarItem> _buildBottomBarTab() {
    List<BottomBarItem> bottomItemBar = [
      BottomBarItem("Home", new Icon(Icons.home)),
      BottomBarItem("Coupon", new Icon(Icons.card_giftcard)),
      BottomBarItem("Favorite", new Icon(Icons.favorite)),
      BottomBarItem("Me", new Icon(Icons.person))
    ];
    return bottomItemBar
        .map(
          (item) => PersistentBottomNavBarItem(
            icon: item.icon,
            title: item.title,
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
          ),
        )
        .toList();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
}

class BottomBarItem {
  final String title;
  final Widget icon;
  const BottomBarItem(this.title, this.icon);
}
