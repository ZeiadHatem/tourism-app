import 'package:flutter/material.dart';
import 'package:tourism/Models/Trips.dart';
import 'package:tourism/Screens/Categories_Screen.dart';
import 'package:tourism/Widgets/Drawer.dart';

import 'Favorites_Screen.dart';


/*
class TabsScreen extends StatelessWidget{

  Widget build(BuildContext context){
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
      ),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Center(child: Text("Travels")),
            bottom: TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.dashboard),
                    text: 'Categores',
                  ),

                  Tab(
                    icon: Icon(Icons.star),
                    text: 'Favorites',
                  )
                ]
            ),
          ),
          body: TabBarView(
              children: [
                CategoriesScreen(),
                FavoritesScreen()
              ]
          ),
        ),
      ),
    );
  }
}*/


class TabsScreen extends StatefulWidget{

  static const screenR='TabsScreen';
  final List<Trips> favoriteTrips;

  TabsScreen({required this.favoriteTrips});

  @override
  _TabsScreenState createState()=> _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>{

   late List<Map<String , Object>> screens;

  int selectedScreenIndex = 0;

  @override
  void initState(){
    screens = [
      {"Screen" : CategoriesScreen(),
        "Title" : 'Categories' },
      {
        "Screen" : FavoritesScreen(favoriteTrips: widget.favoriteTrips,),
        "Title"  : "Favorites"
      }
    ];

    super.initState();
  }

  _selectScreen(int index){
    setState(() {
      selectedScreenIndex = index;
    });
  }

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(child: Text(screens[selectedScreenIndex]["Title"].toString())),
      ),
      drawer: AppDrawer(),
      body: screens[selectedScreenIndex]["Screen"] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
         selectedItemColor: Colors.red,
         currentIndex: selectedScreenIndex,
         onTap: _selectScreen,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
              label: "Categories"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.star),
              label: 'Favorites'
            )
          ],
          backgroundColor: Colors.indigo,
      ),
    );
  }
}
