import 'package:flutter/material.dart';  
import './TwoIcon.dart';   
import './OneIcon.dart'; 

class SecondScreen extends StatefulWidget {  
  
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  
  final  List<IconData> icons = [
    Icons.autorenew_sharp,
    Icons.signal_wifi_4_bar,
    Icons.home,
    Icons.drafts,
    Icons.backspace,
    Icons.ac_unit_rounded
];

  var namesOfIot =["Plug Ammar2","Bilik Hana2","Gate Light Switch2","Plug 3 patio2","Parking lights2","Bridge2"];
  
  var descriptionIot=["","subdevice 3 2"]; 

  @override  
  Widget build(BuildContext context) {  
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 2,  
        crossAxisSpacing: 8.0,  
        mainAxisSpacing: 8.0,
        children: [
          StructureTwo(icons[0],namesOfIot[0]), // structur two you can press 
          StructureOne(icons[1],namesOfIot[1],descriptionIot[0]), // structur one you can not press 
        ],
        )
    );       
  }  
}  
