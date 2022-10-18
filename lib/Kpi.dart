import 'package:flutter/material.dart';
class Kpi extends StatefulWidget {
  const Kpi({Key? key}) : super(key: key);
  @override
  State<Kpi> createState() => _KpiState();
}

class _KpiState extends State<Kpi> {
  @override
  Widget build(BuildContext context)=>Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 70,
            margin: EdgeInsets.only(top: 20,left:20,right: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.grey),
              borderRadius: BorderRadius.circular(6)

            ),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('540 ltr',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                Text('New Products',style: TextStyle(fontWeight: FontWeight.w500),)
              ],
            )

          ),
          containerBox('Run Time Summary'),
          containerBox('Temperature'),
          containerBox('Humidity')
        ],
      ),
    ),
  );
  Widget containerBox(String name){
    return Container(
      alignment: Alignment.topLeft,
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.only(top: 10,left:20,right: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: Colors.grey),
          borderRadius: BorderRadius.circular(6)
      ),
      child: Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
    );
  }
}
