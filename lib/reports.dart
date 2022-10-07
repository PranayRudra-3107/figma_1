import 'package:flutter/material.dart';
class MyReports extends StatefulWidget {
  MyReports({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyReports> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Container example"),
          ),
          body: Container(
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

                      ]
                  ),
                ),


      ),
    );
  }

}