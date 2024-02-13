import 'package:flutter/material.dart';
import 'package:tourism/Widgets/Containers.dart';
import 'package:tourism/app_data.dart';


class TripDetails extends StatelessWidget{

  static const screenRoute = '/trip-details';
  final Function mangeFavorites;
  final Function isFavorites;

  TripDetails({required this.mangeFavorites , required this.isFavorites});

  Widget build(BuildContext context){
    final tripId = ModalRoute.of(context)?.settings.arguments as String ;
    final selectedTrip = tripsData.firstWhere((trip) => trip.id == tripId);
    //to check if idTrip in model data = tripId in screen
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("${selectedTrip.title}"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(selectedTrip.imageurl , fit: BoxFit.cover,),
              ) ,

              SectionTitle(
                title: 'Activities',
              ),

              SectionContainer(
                widget:  ListView.builder(
                    itemCount: selectedTrip.activites.length,
                    itemBuilder: (context , index)=>Card(
                      elevation: 0.5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: Text("*${selectedTrip.activites[index]}"),
                      ),
                    )
                ),
              ),

              SizedBox(height: 10,),

              SectionTitle(title: "Program Today"),

              SectionContainer(
                widget: ListView.builder(
                    itemCount: selectedTrip.programs.length,
                    itemBuilder: (context ,  index)=>Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            child: Text("Day : ${index+1}" , style: TextStyle(fontSize: 12),),
                          ),
                          title: Text(selectedTrip.programs[index]),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.black87,
                        )
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[900],
        child: Icon(isFavorites(tripId)?Icons.star : Icons.star_border),
        onPressed: ()=>mangeFavorites(tripId),
      ),
    );

  }
}