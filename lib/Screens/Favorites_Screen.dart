import 'package:flutter/material.dart';
import 'package:tourism/Models/Trips.dart';
import 'package:tourism/Widgets/Trip_Item.dart';


class FavoritesScreen extends StatelessWidget{


  final List<Trips> favoriteTrips;
  FavoritesScreen({required this.favoriteTrips});

  Widget build(BuildContext context){

    if(favoriteTrips.isEmpty){
      return Center(
        child: Text("You don't have any favorite trip"),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (context , index){
          return TripItems(
              season: favoriteTrips[index].season,
              tripType: favoriteTrips[index].tripType,
              title: favoriteTrips[index].title,
              imageUrl: favoriteTrips[index].imageurl,
              duration: favoriteTrips[index].duration,
              //removeItem: removeTrip,
              id: favoriteTrips[index].id);
        },
        itemCount: favoriteTrips.length,
      );
    }
  }
}