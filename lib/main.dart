import 'package:flutter/material.dart';
import 'machines.dart';
import 'reports.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Figma'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("figma"),
        ),
        body:
        ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index){
          return Container(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      machineContent("540 ltr", "Daily Water Generated"),
                      machineContent("540 ltr", "Dosing Solution Level")
                    ],
                  ),
                  machineContent("Normal","Machine Status")
                ]
            ),
          );
        }),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Column(
            // Important: Remove any padding from the ListView
            children: [

              ListTile(
                leading: Icon(Icons.dashboard),
                title: const Text('Dashboard'),
                onTap: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(
                  builder: (context) =>  MyHomePage(title: 'Figma'),
                  ),
                  );
                   //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings_suggest_sharp),
                title: const Text('Machines'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  MyMachine(title: 'Figma'),
                    ),
                  );
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.find_in_page_sharp),
                title: const Text('Trails'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.poll),
                title: const Text('Reports'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),

                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Spacer(),
              ListTile(
                title: const Text('App Settings'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Log Out'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
              backgroundColor: Colors.white70,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_suggest_sharp),
              label: 'Machines',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page_sharp),
              label: 'Trails',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.poll),
              label: 'Reports',
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined),
              label: 'Menu',
              backgroundColor: Colors.pink,
            ),
          ],
          //currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
  Widget machineContent(String title,String content){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(title,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),),
        Text(content),
      ],
    );
  }
}