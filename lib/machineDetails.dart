import 'package:flutter/material.dart';
class MachineDetails extends StatefulWidget {
  const MachineDetails({Key? key}) : super(key: key);
  @override
  State<MachineDetails> createState() => _State();
}
class _State extends State<MachineDetails> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
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
            fontSize: 10
          )),
        ],
      ),
      bottom: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
        ],
      ),

    ),
        body: Container(
          height: 70,
          width: double.infinity,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 5, left: 10, right: 10),
          padding: const EdgeInsets.all(10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('NF3535',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    letterSpacing: 0.5,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    const Text('ID: 135BA28'),
                  ],
                ),
              ]),
        ),
      );
}
