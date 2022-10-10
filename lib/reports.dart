import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}
class _ReportsState extends State<Reports> {
  final items = ['items1','items2','items3','items4'];
  String? value;
  @override
  Widget build(BuildContext context)=>Scaffold(
      body:
      Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
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
                    DropdownButton<String>(
                      hint: Text('Select'),
                      value: value,
                      isExpanded: true,
                      iconSize: 30,
                      icon: Icon(Icons.arrow_drop_down , color: Colors.grey),
                      items: items.map(buildMenuItem).toList(),
                      onChanged: (value)=> setState(()=> this.value = value),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(

                  children: [
                    Text("Machine",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                Column(
                  children: [
                    DropdownButton<String>(
                      hint: Text('Select'),
                      value: value,
                      isExpanded: true,
                      iconSize: 30,
                      icon: Icon(Icons.arrow_drop_down , color: Colors.grey),
                      items: items.map(buildMenuItem).toList(),
                      onChanged: (value)=> setState(()=> this.value = value),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(

                  children: [
                    Text("Date",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),),
                  ],
                ),
                Column(
                  children: [
                    DropdownButton<String>(
                      hint: Text('DD/MM/YYYY - DD/MM/YYYY'),
                      value: value,
                      isExpanded: true,
                      iconSize: 20,
                      icon: Icon(Icons.calendar_today_outlined , color: Colors.grey),
                      items: items.map(buildMenuItem).toList(),
                      onChanged: (value)=> setState(()=> this.value = value),
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
      style: TextStyle( fontSize: 20),
    ),
  );
}

