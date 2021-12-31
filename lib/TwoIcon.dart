import 'package:flutter/material.dart';  

// will receive one icone type and the name of Iot, will be able to press and chanege 
class StructureTwo extends StatefulWidget {
  //const name({Key? key}) : super(key: key);
  final IconData typeOfIcon; 
  final String nameIot;

  // ignore: use_key_in_widget_constructors
  const StructureTwo(this.typeOfIcon, this.nameIot);

  @override
  State<StructureTwo> createState() => _StructureTwoState();
}

class _StructureTwoState extends State<StructureTwo> {
   var isOFF= true ;

  //String get nameIot => nameIot;

  // String getNameIot (){
     
  //    return widget.nameIot;
  // }

   Color iconsColor (){
    if(isOFF)
     return Colors.grey;
    else
     return Colors.green;
  }

  String changeText (){
    if(isOFF)
     return "OFF";
    else
    return "ON";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: [
                GestureDetector(
                  child:Row(
                  children: [
                    Icon(widget.typeOfIcon,size: 50, color: iconsColor(),) ,  
                    Divider(indent:40 ,) , 
                    Icon(Icons.power_settings_new_outlined ,size: 50, color: iconsColor(),), 
                  ],
                ),
                onTap: () {
                        setState(() {
                          isOFF= !isOFF;
                        });
                      },
                ),
                
                SizedBox(height:30 ) ,
                Row(
                  children: [
                    Text(
                  widget.nameIot,
                  style:TextStyle(fontSize: 15,) ),
                  ],
                  ),
                SizedBox(height:30 ) ,
                Row(
                  children: [
                    Text(
                  changeText (),
                  style:TextStyle(fontSize: 15,) 
                  ),
                  ],
                  ),
              ],
            ),
            );
  }
}