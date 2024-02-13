import 'package:flutter/material.dart';


class SectionTitle extends StatelessWidget{

  String title;

  SectionTitle({required this.title});

  Widget build(BuildContext context){
    return Container(
          margin: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
          alignment: Alignment.topLeft,
          child: Text(title , style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'Cairo-VariableFont_wght.ttf',
            color: Colors.red,
          ),)
      );
  }
}

class SectionContainer extends StatelessWidget{

  final widget;

  SectionContainer({this.widget});

  Widget build(BuildContext context){

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)
      ),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
      child: widget,
    );
  }
}