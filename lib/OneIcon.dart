import 'package:flutter/material.dart';  

// will receive one icone type and the name of Iot and description, will not be able to press and chanege 
class StructureOne extends StatefulWidget {
  //const name({Key? key}) : super(key: key);
  final IconData typeOfIcon; 
  final String nameIot;
  final String description;

  // ignore: use_key_in_widget_constructors
  const StructureOne(this.typeOfIcon, this.nameIot , this.description);

  @override
  State<StructureOne> createState() => _StructureOneState();
}

class _StructureOneState extends State<StructureOne> {

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
                    Icon(widget.typeOfIcon,size: 50, color: Colors.grey,) ,  
                    
                  ],
                ),
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
                  widget.description,
                  style:TextStyle(fontSize: 15,) 
                  ),
                  ],
                  ),
              ],
            ),
            );
  }
}