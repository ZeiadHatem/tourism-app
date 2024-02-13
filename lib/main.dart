import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourism/Models/Trips.dart';
import 'package:tourism/Screens/Tabs_Screen.dart';
import 'package:tourism/Screens/Category_Trips.dart';
import 'package:tourism/Screens/Trip_Detail.dart';
import 'package:tourism/Screens/filters_Screen.dart';
import 'package:tourism/app_data.dart';


void main(){

  runApp(TravelApp());
}


class TravelApp extends StatefulWidget{


  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {

    Map<String , bool> _filters = {
      'summer' : false,
      'winter' : false,
      "family" : false
    };

    List<Trips> _availableTrips=tripsData;
    List<Trips> _favoriteTrips = [];

    changeFilters(Map<String , bool> filtersData){
      setState(() {
        _filters = filtersData;

        _availableTrips = tripsData.where((trip) {
          if(_filters['summer'] ==true && trip.isInSummer!=true){
            return false;
          }
          if(_filters['winter'] ==true&&trip.isInWinter!=true){
            return false;
          }
          if(_filters['family'] ==true&&trip.isForFamily!=true){
            return false;
          }
          return true;
        }).toList();
      });
    }

    _manageFavorite(String tripId){
      final existingIndex = _favoriteTrips.indexWhere((trip) => trip.id==tripId);

      if(existingIndex>=0){
        setState(() {
          _favoriteTrips.removeAt(existingIndex);
        });
      }else{
        setState(() {
          _favoriteTrips.add(tripsData.firstWhere((trip) => trip.id==tripId));
        });
      }
    }

    bool isFavorites(String id){
      return _favoriteTrips.any((trip) => trip.id==id);
    }

  Widget build(BuildContext context){
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarIconBrightness:Brightness.light,
        statusBarColor: Colors.transparent
      ),
      child: MaterialApp(
        title: 'Travel App',
        debugShowCheckedModeBanner: false,
        home: TabsScreen(favoriteTrips: _favoriteTrips,),
        routes: {
          TabsScreen.screenR:(context)=>TabsScreen(favoriteTrips: _favoriteTrips),
          CategoryTrips.screenR: (context)=>CategoryTrips(availableTrips: _availableTrips),
          TripDetails.screenRoute:(context)=>TripDetails(mangeFavorites: _manageFavorite , isFavorites: isFavorites),
          FiltersScreen.screenR :(context)=>FiltersScreen(saveFilters: changeFilters,currentFilters: _filters)
        },
      ),
    );
  }
}
