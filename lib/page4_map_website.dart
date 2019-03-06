import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';


class Page4MapWebsite extends StatefulWidget {
  @override
  _Page4MapWebsite createState() => _Page4MapWebsite();
}

class _Page4MapWebsite extends State<Page4MapWebsite> {
  GoogleMapController mapController;
  MapType _currentMapType = MapType.normal;

  final LatLng _center = const LatLng(24.724234, 121.088662);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.addMarker(MarkerOptions(
      position: LatLng(24.724234, 121.088662),
      infoWindowText: InfoWindowText(' ', ' '), //白框內訊息
      icon: BitmapDescriptor.defaultMarker,
    ));
  }

  void _onMapTypeButtonPressed() {
    if (_currentMapType == MapType.normal) {
      mapController.updateMapOptions(
        GoogleMapOptions(mapType: MapType.satellite),
      );
      _currentMapType = MapType.satellite;
    } else {
      mapController.updateMapOptions(
        GoogleMapOptions(mapType: MapType.normal),
      );
      _currentMapType = MapType.normal;
    }
  }

//  void _onAddMarkerButtonPressed() {//增加地標按鈕
//    mapController.addMarker(
//      MarkerOptions(
//        position: LatLng(
//            24.119877, 120.627829
//        ),
//        infoWindowText: InfoWindowText('Random Place', '5 Star Rating'),
//        icon: BitmapDescriptor.defaultMarker,
//      ),
//    );
//  }


  _launchURL() async {
    const url = 'tel:02-2355955';//電話號碼
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }



  @override
  Widget build(BuildContext context) {

    final serviceButton = new ButtonTheme(
        minWidth: 40.0,
        height: 45.0,
        child: RaisedButton.icon(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed:
          _launchURL,
          color: Colors.redAccent,
          icon: const Icon(Icons.phone,size: 24,color: Colors.white,),
          label: new Text('聯繫客服', style: TextStyle(color: Colors.white,fontSize: 20)),
        )
    );

    return new Scaffold(
        appBar: AppBar(
          title: Text('天師尊府'),
          backgroundColor: Colors.red,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 400.0,
              width: double.infinity,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                options: GoogleMapOptions(
                  trackCameraPosition: true,
                  cameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), 
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: _onMapTypeButtonPressed,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.red,
                      child: const Icon(Icons.map, size: 36.0),
                    ),
                    const SizedBox(height: 16.0),

//                    FloatingActionButton(//增加地標按鈕
//                      onPressed: _onAddMarkerButtonPressed,
//                      materialTapTargetSize: MaterialTapTargetSize.padded,
//                      backgroundColor: Colors.green,
//                      child: const Icon(Icons.add_location, size: 36.0),
//                    ),
                  ],
                ),
              ),
            ),
            new Positioned(
              top: 415.0,
                left: 15.0,
                child:
                new Text("地址 : 新竹縣竹東鎮和江街367號",style: new TextStyle(fontSize: 18),),
            ),
            new Positioned(
              top: 450.0,
                left: 15.0,
                right: 15.0,
                child: new Linkify(
                   onOpen: (url) async {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  text: "天師官網 : http://iching.yuntech.edu.tw/association/index.php",style: new TextStyle(fontSize: 18),
                ),
            ),
            new Positioned(
              top: 530.0,
                left: 15.0,
                child: serviceButton,
            ),
          ],
        ),
      );
  }
}
