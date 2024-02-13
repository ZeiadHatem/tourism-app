import 'package:flutter/material.dart';
import 'package:tourism/Models/Trips.dart';
import 'package:tourism/Screens/Trip_Detail.dart';

class TripItems extends StatelessWidget{

  final String id;
  final String title ;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;
  //final Function removeItem;


  TripItems({
    required this.id,
    required this.season ,
    required this.tripType ,
    required this.title ,
    required this.imageUrl ,
    required this.duration,
    //required this.removeItem
  });

  String get seasonText{
    switch(season){
      case Season.winter:
        return "Winter";

      case Season.summer:
        return 'Summer';

      case Season.spring:
        return "Spring";

      case Season.Autumn:
        return "Autumn";

      default:
        return 'Unkown';
    }
  }   //to conver from enum to String (Seasons)

  String get tripeTypeText{

    switch(tripType){
      case TripType.activities:
        return "Activities";
      case TripType.exploration:
        return "Exploration";
      case TripType.recovery:
        return "Recovery";
      case TripType.therapy:
        return "Theraby";

      default:
        return 'Unknown';
    }
  }

  selectTrip(BuildContext context){
    Navigator.of(context).pushNamed(TripDetails.screenRoute ,
    arguments: id ).then((result) {
      if(result !=null){
        //removeItem(result);
      }
    });
  }
  
  Widget build(BuildContext context){
    
    return InkWell(
      onTap: ()=>selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)
                  ),
                  child: Image.network(imageUrl , height: 250,width: double.infinity,fit: BoxFit.cover,),
                ),

                Container(
                  decoration: BoxDecoration(

                    gradient: LinearGradient(begin: Alignment.topCenter , 
                        end: Alignment.bottomCenter ,
                        colors:[Colors.black.withOpacity(0) , Colors.black.withOpacity(0.8)],
                      stops: [
                        0.6,
                        1
                      ]
                    )  // to make text apper in Image
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                  alignment: Alignment.bottomLeft,
                  height: 250,
                  child: Text(title ,overflow: TextOverflow.fade /* to disappear long text */ ,style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontFamily: 'Cairo-VariableFont_wght.ttf',
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(20),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.today , color: Colors.red,),
                      SizedBox(width: 6,),
                      Text('$duration Days ')
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.sunny , color: Colors.red,),
                      SizedBox(width: 6,),
                      Text(seasonText)
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.family_restroom , color: Colors.red,),
                      SizedBox(width: 6,),
                      Text(tripeTypeText)
                    ],
                  )
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}