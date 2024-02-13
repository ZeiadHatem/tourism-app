import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourism/Widgets/Category_Item.dart';
import 'package:tourism/app_data.dart';


class CategoriesScreen extends StatelessWidget{


  Widget build(BuildContext context){
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
      ),
      child: GridView(
          padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 7/8,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
            ),
            children: categories_data.map((categoryData)=> CategoryItem(
                title:categoryData.title, image: categoryData.imageUrl,
                id: categoryData.id,)
            ).toList(),
          )
        );
  }
}