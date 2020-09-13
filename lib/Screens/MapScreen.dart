import 'dart:async';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nhams_app/Screens/NavigatorScreen.dart';

class MapScreen extends StatelessWidget {
  MapScreen();
  Completer<GoogleMapController> _controller = Completer();

  double zoomVal = 5.0;

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
            // padding: EdgeInsets.all(10),
            // width: 260,
            margin: EdgeInsets.only(top: 15, bottom: 15),
            child: TextField(
              cursorColor: Colors.redAccent,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(10),
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
              onPressed: () {})
        ],
      ),
      body: Stack(
        children: <Widget>[
          _buildGoogleMap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
      // Column(
      //     children: <Widget>[
      //       // Stack(
      //       //   children: <Widget>[
      //       //     Container(
      //       //       margin: EdgeInsets.only(top: 10, bottom: 10),
      //       //       alignment: Alignment.center,
      //       //       height: 40,
      //       //       child: Row(
      //       //         children: List<Expanded>.generate(
      //       //             4, (int index) => Expanded(
      //       //             child: menuList[index]
      //       //         )
      //       //         ),
      //       //       ),
      //       //     ),
      //       //   ],
      //       // ),
      //
      //       Stack(
      //         children: <Widget>[
      //           _buildGoogleMap(context),
      //           _zoomminusfunction(),
      //           _zoomplusfunction(),
      //           _buildContainer(),
      //         ],
      //       ),
      //
      //     ]
      // )
    );
  }

  Widget _zoomminusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          icon: Icon(Icons.search, color: Color(0xff6200ee)),
          onPressed: () {
            zoomVal--;
            _minus(zoomVal);
          }),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon: Icon(Icons.search, color: Color(0xff6200ee)),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(40.712776, -74.005974), zoom: zoomVal)));
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipO3VPL9m-b355xWeg4MXmOQTauFAEkavSluTtJU=w225-h160-k-no",
                  40.738380,
                  -73.988426,
                  "Gramercy Tavern"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                  40.761421,
                  -73.981667,
                  "Le Bernardin"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://images.unsplash.com/photo-1504940892017-d23b9053d5d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
                  40.732128,
                  -73.999619,
                  "Blue Hill"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String restaurantName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
              color: Colors.white,
              elevation: 14.0,
              borderRadius: BorderRadius.circular(24.0),
              shadowColor: Color(0x802196F3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 180,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(24.0),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(_image),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: myDetailsContainer1(restaurantName),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(
            restaurantName,
            style: TextStyle(
                color: Color(0xff6200ee),
                fontSize: 24.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Text(
              "4.1",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
            Container(
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
              child: Icon(
                Icons.star,
                color: Colors.amber,
                size: 15.0,
              ),
            ),
            Container(
                child: Text(
              "(946)",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            )),
          ],
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
          ),
        )),
        SizedBox(height: 5.0),
        Container(
            child: Text(
          "Closed \u00B7 Opens 17:00 Thu",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // height: 600,
      // width:  MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(11.5520289, 104.9399949), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          planBMarker,
          buildingGMarker,
          tellItaliaMarker,
          amazonMarker,
          oldPlaceMarker,
          todaycoffeeMarker,
          sreynitMarker,
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}

Marker planBMarker = Marker(
  markerId: MarkerId('planb'),
  position: LatLng(11.5520289, 104.9399949),
  infoWindow: InfoWindow(title: 'PLAN-B Cambodia'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker buildingGMarker = Marker(
  markerId: MarkerId('buildingg'),
  position: LatLng(11.5518397, 104.9380154),
  infoWindow: InfoWindow(title: 'Building G'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker tellItaliaMarker = Marker(
  markerId: MarkerId('tellItalia'),
  position: LatLng(11.5518397, 104.9314494),
  infoWindow: InfoWindow(title: 'Tell italiano'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker amazonMarker = Marker(
  markerId: MarkerId('amazon'),
  position: LatLng(11.5617203, 104.9056144),
  infoWindow: InfoWindow(title: 'Amazon'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker oldPlaceMarker = Marker(
  markerId: MarkerId('amazon'),
  position: LatLng(11.5533113, 104.9074168),
  infoWindow: InfoWindow(title: 'Old Place'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker todaycoffeeMarker = Marker(
  markerId: MarkerId('todaycoffee'),
  position: LatLng(11.5088848, 104.8787986),
  infoWindow: InfoWindow(title: 'Today Coffee'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker sreynitMarker = Marker(
  markerId: MarkerId('sreynit'),
  position: LatLng(11.5733859, 104.9572478),
  infoWindow: InfoWindow(title: 'Srey Nit'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
