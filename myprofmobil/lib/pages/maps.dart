import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myprofmobil/outils/myStyle.dart';

class MapsFlutter extends StatefulWidget {
  static const routeName = 'mapsflutter';
  @override
  _MapsFlutterState createState() => _MapsFlutterState();
}

class _MapsFlutterState extends State<MapsFlutter> {
  GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Mon Compte', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, fontFamily: 'BAARS', color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.black,)
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: fondcolor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Ma position', style: TextStyle(
                      fontFamily: 'BAARS', fontSize: 22, fontWeight: FontWeight.bold
                  ),),
                  Icon(Icons.location_on, color: themeColor,)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                //color: themeColor,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
