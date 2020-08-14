import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_webservice/places.dart';

import 'package:myprofmobil/outils/myStyle.dart';
//Classe pour le champ widget de recherche

const kGoogleApiKey = "AIzaSyCk77TfuPCTmAYFGMB2sF27Tb3LhJYHt7Q";
GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);

class SearchCard extends StatefulWidget {
  @override
  _SearchCardlState createState() => _SearchCardlState();
}

class _SearchCardlState extends State<SearchCard> {

  Mode _mode = Mode.fullscreen;
  final homeScaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          InkWell(
            // onTap: () => Navigator.of(context).pushNamed(SearchPage.routeName),
            onTap: _handlePressButton,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Color(0xfff1f1f1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: <Widget>[
                Flexible(
                    flex: 4,
                    child: Container(
                        padding: EdgeInsets.only(top: 3, left: 10),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Flexible(
                                child: Icon(
                              Icons.search,
                              size: 22,
                            )),
                            Flexible(
                              flex: 2,
                              child: Text("essayer Maths,.."),
                            ),
                          ],
                        ))),
                Flexible(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(4),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Text(
                        "Rechercher",
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: accanceColor.withOpacity(.8),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    )),
              ]),
            ),
          ),
        ],
      ),
    );
  }

   void onError(PlacesAutocompleteResponse response) {
     print(response.errorMessage);
    homeScaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text(response.errorMessage)),
    );
  }

   Future<void> _handlePressButton() async {
    Prediction p = await PlacesAutocomplete.show(
      context: context,
      apiKey: kGoogleApiKey,
      onError: onError,
      mode: _mode,
      language: "fr",
      components: [Component(Component.country, "ci")],
    );

    displayPrediction(p, homeScaffoldKey.currentState);
  }
}

//End chanp de recherche widget 

Future<Null> displayPrediction(Prediction p, ScaffoldState scaffold) async {
  if (p != null) {
    // get detail (lat/lng)
    PlacesDetailsResponse detail = await _places.getDetailsByPlaceId(p.placeId);
    final lat = detail.result.geometry.location.lat;
    final lng = detail.result.geometry.location.lng;

     print(p.description);
     print("${p.description} - $lat/$lng");

    // scaffold.showSnackBar(
    //   SnackBar(content: Text("${p.description} - $lat/$lng")),
    // );
  }
}