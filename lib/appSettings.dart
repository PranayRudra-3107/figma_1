import 'package:flutter/material.dart';
class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context)=>Scaffold(
      body: Column(
        children: [
          text1('', 'Dark theme'),
          text1('Phone1', '123456789'),
          text1('Phone2','123456789'),
          text1('Email ID','Automac.in'),
          text1('Phone2','Automac.in')
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
