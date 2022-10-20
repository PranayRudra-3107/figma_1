import 'package:flutter/material.dart';

class Digital extends StatelessWidget {
  const Digital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)=>Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          box('on','on'),
          box('off','on'),
          box('on','off'),
          box('on','on'),
          box('off','off'),
          box('on','on'),
          box('on','on'),
          box('on','on'),
        ],
      ),
    ),
  );
  Widget box(String status1, status2){
    return Container(
      height: 67,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sensor Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              Row(children: [Text('Input'),SizedBox(width: 10,),Text(status1,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),SizedBox(width: 10,),symbol(status1)],)
              //Text('Input' + status + symbol)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sensor Name',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              Row(children: [Text('Output'),SizedBox(width: 10,),Text(status2,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),SizedBox(width: 10,),symbol(status2)],)
              //Text('Input' + status + symbol)
            ],
          )
        ],
      ),
    );
  }
Widget symbol(String col){
    Color getColor(){
        if(col=='on'){
          return Colors.green;
        }
        else{
          return Colors.red;
        }
    }
  return SizedBox(
    height:30,
    width: 35,
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 4,bottom: 4,right: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                  color: getColor(),
                  width: 3
              )
          ),
        ),
      ],
    ),
  );
}
}
