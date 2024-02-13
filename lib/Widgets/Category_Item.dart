import 'package:flutter/material.dart';
import 'package:tourism/Screens/Category_Trips.dart';


class CategoryItem extends StatelessWidget{
  final String id;
  final String title;
  final String image;

  CategoryItem({required this.title , required this.image, required this.id});

  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, CategoryTrips.screenR,arguments: {
          'id': id,
          'title':title
        });
      },
      splashColor: Colors.blue,
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          ClipRRect(
              child: Image.network(image , height: 250 , fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(20),
          ),

          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Cairo-VariableFont_wght.ttf',
              ),
            ),
          )
        ],
      ),
    );
  }
}