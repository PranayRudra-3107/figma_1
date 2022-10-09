import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
          return Container(
            height: 190,
            width: double.infinity,
            //color: Colors.purple,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 5,left: 10,right: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black12, width: 1),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Machine Name',style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 20,
                  ),),
                  Row(
                    children: [
                      Icon(Icons.circle , color: Colors.red[500] , size: 10),
                      const Text(' Broke'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      machineContent("540 ltr", "Daily Water Generated"),
                      machineContent("540 ltr", "Dosing Solution Level")
                    ],
                  ),
                  machineContent("Normal","Machine Status")
                ]
            ),
          );
        }),
  );
  Widget machineContent(String title,String content){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),),
        Text(content),
      ],
    );
  }
}