import 'package:flutter/material.dart';  
import './FirstScreen.dart';  
import './SecondScreen.dart';  
import './ThirdScreen.dart';  
 
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: DefaultTabController(  
        length: 3,   
        child: Scaffold(  
          appBar: AppBar(                 
            title: Text('My Home'),  
            bottom: TabBar(   
              tabs: [  
                Tab( text: "All"),
                Tab( text: "Living Room"),
                Tab( text: "Bedroom Room"),
                  // the title of the tab       
              ]
            ),  
          ),  
          body: Container(
            color: Colors.green[50],
            child: TabBarView(  
              children: [  
                FirstScreen(),
                SecondScreen(),
                ThirdScreen(),    
              ],  
            ),
          ),  
        ),  
      ),  
    );  
  }  
}  