import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Reports extends StatelessWidget {
  final items = ['items1','items2','items3','items4'];
  String? value;
  @override
  Widget build(BuildContext context)=>Scaffold(
    body:
    Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(

                children: [
                  Text("Report Type",style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 39 ,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey,width: 0.5)
                    ),
                    child: DropdownButton<String>(
                      hint: Text('Select'),
                      value: value,
                      isExpanded: true,
                      iconSize: 36,
                      icon: Icon(Icons.arrow_drop_down , color: Colors.black),
                      items: items.map(buildMenuItem).toList(),
                      //onChanged: (value)=> setState(()=> this.value = value),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    )
  );
  
  DropdownMenuItem<String> buildMenuItem(String item)=> DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),
      ),
  );



}
