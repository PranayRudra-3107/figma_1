import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context)=> Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: 110,
                  height: 110,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://www.sfu.ca/content/sfu/communication/people/emeritus/linda-harasim/jcr:content/main_content/image.img.2000.high.png/1533071250636.png'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                Text('Name',style: TextStyle(fontSize: 20),),
                Text('Role')
              ],
            ),
          ),
          Text('   Details',style: TextStyle(fontSize: 20),),
          text1('Company Name' , 'Automac'),
          text1('UID', '123456789'),
          text1('Gateway Numbers','18273'),
          text1('Lorem ipsum','Lorem ipsum')
        ],
      ),
  );
  Widget text1(String title ,String value){
    return Container(
      margin: const EdgeInsets.only(top: 15,left: 15,right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          TextField(
            readOnly: true,
            decoration: InputDecoration(
              hintText: value,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black
              )
            ),
          ),

        ],
      ),
    );
  }

}
