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
      SingleChildScrollView(
        child: Column(
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
                        color: Colors.grey
                      ),),
                    ],
                  ),
                  Container(
                    height: 220,
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.black12, width: 1),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text("Plant name",style: TextStyle(
                                  fontSize: 16
                                ),),
                                Text("NF35353",style: TextStyle(
                                  fontSize: 20
                                ),),
                                Text("White Classic")
                              ],
                            ),
                            Spacer(),
                            Text("26/02/2020")
                          ]
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12,width: 4),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child:
                          Center(child: Text("Generate Graph",style: TextStyle(
                            fontSize: 20
                          ),)),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12,width: 4),
                              borderRadius: BorderRadius.circular(6),
                          ),
                          child:
                          Center(child: Text("Generate Data Table",style: TextStyle(
                            fontSize: 20
                          ),)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
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

