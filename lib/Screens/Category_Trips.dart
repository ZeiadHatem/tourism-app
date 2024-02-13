import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/Models/Trips.dart';
import 'package:tourism/Widgets/Trip_Item.dart';
import 'package:tourism/app_data.dart';


class CategoryTrips extends StatefulWidget{
static const screenR = '/category-trips';

final List<Trips> availableTrips;

CategoryTrips({
  required this.availableTrips
});

  @override
  State<CategoryTrips> createState() => _CategoryTripsState();
}

class _CategoryTripsState extends State<CategoryTrips> {

  late String categoryTitle;
  List<Trips> displayTrips=[];

  @override
  void didChangeDependencies(){

    final routArgument = ModalRoute.of(context)?.settings.arguments as Map<String , String>;
    final categoryId = routArgument['id'];
    categoryTitle = routArgument['title']!;
    displayTrips = widget.availableTrips.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  /*removeTrip(String tripId){
    setState(() {
      displayTrips.removeWhere((trip) => trip.id ==tripId );
    });
  }*/

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(child: Text('$categoryTitle')),
      ),

      body: ListView.builder(
        itemBuilder: (context , index){
          return TripItems(
              season: displayTrips[index].season,
              tripType: displayTrips[index].tripType,
              title: displayTrips[index].title,
              imageUrl: displayTrips[index].imageurl,
              duration: displayTrips[index].duration,
              //removeItem: removeTrip,
              id: displayTrips[index].id);
        },
        itemCount: displayTrips.length,
      ),
    );
  }
}