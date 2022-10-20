import 'package:figma/analog.dart';
import 'package:figma/digital.dart';
import 'package:flutter/material.dart';
class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) =>DefaultTabController(
    length: 2,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 0,
        toolbarHeight: 60,
        leading: SizedBox(),
        bottom: TabBar(
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          indicator: BoxDecoration(
            // border: Border.all(color: Colors.blue,),
            borderRadius: BorderRadius.circular(50),
          ),
          tabs: [
            Tab(child: Container(
               height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Text('Digital IOs'),
            )),
            Tab(child: Container(
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(6)
              ),
              child: Text('Analog IOs'),
            )),
          ],
        ),

      ),
      body: TabBarView(
        children: [
          Digital(),
          Analog()
        ],
      ),
    ),
  );
}
