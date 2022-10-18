import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context)=>Scaffold(
    body: SingleChildScrollView(
      child: Column(
          children: [
            head('General'),
            box1('ID', '135BA28'),
            box1('Name', 'NF3535'),
            box1('Model', 'White'),
            box1('Date Of Installation', '2020 Spring'),
            box1('Detail 1','2770'),
            box1('Detail 2', "\$"+"79.00"),
            head('Manuals and Docs'),
            box2('Electrical Drawing'),
            box2('Technical Details'),
            box2('VFD Datasheet'),
            box2('VFD Datasheet'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('View all',style: TextStyle(color: Colors.grey),))
              ],
            ),
            head('Technical Details'),
            box3(),
            box3(),
            box3(),
            box3(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text('View all',style: TextStyle(color: Colors.grey),))
              ],
            ),
          ],
      ),
    ),
  );
  Widget head(String name){
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10),
      child: TextField(
        readOnly: true,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(color: Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          suffixIcon: Align(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Colors.black,
            ),
          ),
         ),

      ),
    );
  }
  Widget box1(String head , String body){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1,color: Colors.grey)
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(head,style: TextStyle(fontSize: 14,color: Colors.grey),),
            ],
          ),
          Row(
            children: [
              Text(body,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }
  Widget box2(String name){
    return Container(

      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1,color: Colors.grey)
          )
      ),
      child: Row(
        children: [
          Image.asset("lib/asserts/pdficon.png",height: 25,),
          SizedBox(width: 10,),
          Column(
            children: [
              Text(name,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
              Text('Harsha | 3 hours ago'),
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 150,
            child: Icon(Icons.file_download_outlined),
          )
        ],
      ),
    );
  }
  Widget box3(){
    return Container(

      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1,color: Colors.grey)
          )
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('28/05/2022',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
              Text('05822-FXSP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
              Text('Make: Delta, Code: DS120R',style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.w400)),
              Container(
                color: Colors.deepOrangeAccent[50],
                child: Text('Lable',style: TextStyle(color: Colors.deepOrange),),
              )
            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            width: 170,
            child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 15),
          )
        ],
      ),
    );
  }
  
}
