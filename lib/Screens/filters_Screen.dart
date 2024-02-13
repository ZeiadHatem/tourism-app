import 'package:flutter/material.dart';
import 'package:tourism/Widgets/Drawer.dart';

class FiltersScreen extends StatefulWidget{

  static const screenR = 'filtersScreen';
  final Function saveFilters;
  final Map<String  , bool> currentFilters;

  FiltersScreen({required this.currentFilters,required this.saveFilters});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  var _summer = false;
  var _winter = false;
  var _family = false;

  @override
  void initState() {
    _summer = widget.currentFilters['summer']!;
    _winter = widget.currentFilters['winter']!;
    _family = widget.currentFilters['family']!;
    super.initState();
  }

   Widget switchListTileMethod(String title ,
      String subTitle ,  var currentValue ,  updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        value: currentValue,
        onChanged: updateValue
    );
  }

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(child: Text("Filtering Page"),),
        actions: [
          IconButton(onPressed: (){
            final selectedFilters={
              'summer' : _summer,
              'winter' : _winter,
              "family" : _family
            };
            widget.saveFilters(selectedFilters);
          },
              icon: Icon(Icons.save)
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Expanded(
              child: ListView(
                children: [
                  switchListTileMethod(
                      "Summer Trips",
                      "Show Summer Trips Only",
                      _summer,
                      (newValue){
                        setState(() {
                          _summer = newValue;
                        });
                      }
                  ),

                  switchListTileMethod(
                      'Winter Trips',
                      "Show Winter Trips Only",
                      _winter,
                      (newValue){
                        setState(() {
                          _winter = newValue;
                        });
                      }
                  ),

                  switchListTileMethod(
                      'For Family',
                      'Show Family Trips Only',
                      _family,
                      (newValue){
                        setState(() {
                          _family = newValue;
                        });
                      }
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}