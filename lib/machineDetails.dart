import 'package:figma/Iostatus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'details.dart';
import 'package:figma/Kpi.dart';

class MachineDetails extends StatefulWidget {
  const MachineDetails({Key? key}) : super(key: key);
  @override
  State<MachineDetails> createState() => _State();
}
class _State extends State<MachineDetails> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leadingWidth: 0,
        leading: SizedBox(),
        title: Column(
          children: [
            Text('NF3535',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
            ),
            Text('ID: 135BA28',style: TextStyle(
              fontSize: 10,color: Colors.black
            )),
          ],
        ),
        bottom: TabBar(
          indicatorColor: Colors.blue,

          labelColor: Colors.black,
          tabs: [
            Tab(text: "Details",),
            Tab(text: "KPl's",),
            Tab(text: "IO Status",),
          ],
        ),

      ),
          body: TabBarView(
            children: [
              Details(),
              Kpi(),
              Status(),
            ],
          ),
        ),
  );
}
