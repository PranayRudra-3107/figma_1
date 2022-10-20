import 'package:flutter/material.dart';

class Analog extends StatelessWidget {
  const Analog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=>Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
            box(),
            box(),
            box(),
            box(),
            box(),
            box(),
            box(),
            box(),
        ],
      ),
    ),
  );
  Widget box(){
    return Container(
      height: 60,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 15,right: 15,top: 5),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1,color: Colors.grey)
          ),
      ),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('Sensor Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              Row(children: [Text('Input'),SizedBox(width: 10,),Text('250rpm',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)],)
              //Text('Input' + status + symbol)
            ],
          ),
          Column(
            children: [
              Text('Sensor Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              Row(children: [Text('Output'),SizedBox(width: 10,),Text('250rpm',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)],)
              //Text('Input' + status + symbol)
            ],
          )
        ],
      ),
    );
  }
  // Widget symbol(){
  //   return SizedBox(
  //     width: 35,
  //     child: Row(
  //       children: [
  //         Container(
  //           margin: EdgeInsets.only(top: 4,bottom: 4,right: 4),
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(25),
  //               border: Border.all(
  //                   color: Colors.green,
  //                   width: 4
  //               )
  //           ),
  //         ),
  //         Text("ON")
  //       ],
  //     ),
  //   );
  // }
}
