import 'package:flutter/material.dart';
class Notifications extends StatefulWidget {
  @override
  State<Notifications> createState() => _NotificationsState();
}
class _NotificationsState extends State<Notifications> {
  final List<Item> _data = generateItems(12);
  @override
  Widget build(BuildContext context)=>Scaffold(
      appBar: AppBar(title: Text('Notifications',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white70,),
      body:SingleChildScrollView(
        child: Container(
          child: _buildPanel(),
        ),
      )
  );
  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              visualDensity: VisualDensity(vertical: 3),
              title: Text(item.headerValue),
              subtitle: Text('Subline goes here ..Lorem Ipsum Subline goes here.. Subline goes here'),
            );
          },
          body: ListTile(
              title: Text('clear',style: TextStyle(color: Colors.blue),),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue:  'Notification Headline',
      expandedValue: 'This is item number $index',
    );
  });
}







