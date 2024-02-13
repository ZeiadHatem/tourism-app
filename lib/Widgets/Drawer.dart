import 'package:flutter/material.dart';
import 'package:tourism/Screens/Categories_Screen.dart';
import 'package:tourism/Screens/Tabs_Screen.dart';
import 'package:tourism/Screens/filters_Screen.dart';


class AppDrawer extends StatelessWidget {


  ListTile listTileDrawer(String title , Icon icon , VoidCallback onTap) {
    return ListTile(
      onTap: onTap,
      title: Text(title , style: TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: 'Cairo-VariableFont_wght.ttf',
          fontSize: 20
      ),),
      leading: Icon(icon.icon, size: 30,color: Colors.red,),
    );
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Colors.red,
            child: Text("Trips App", style: TextStyle(
                fontSize: 26,
                fontFamily: 'Cairo-VariableFont_wght.ttf',
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          ),

          SizedBox(height: 20,),

          listTileDrawer(
              'Travels', 
              Icon(Icons.card_travel),
              (){
                Navigator.pushReplacementNamed(context, TabsScreen.screenR);
              }
          ),
          listTileDrawer(
              'Filtering',
              Icon(Icons.filter_list)
              , () {
                Navigator.pushReplacementNamed(context, FiltersScreen.screenR);
          })
        ],
      ),
    );
  }
}