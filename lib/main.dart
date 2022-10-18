import 'package:figma/appSettings.dart';
import 'package:figma/home.dart';
import 'package:flutter/material.dart';
import 'machines.dart';
import 'reports.dart';
import 'trails.dart';
import 'home.dart';
import 'profileDetails.dart';
import 'login.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    HomePage(),
    Machine(),
    Trails(),
    Reports(),
    Reports(),
    // Scaffold.of(context).openDrawer(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: const Text("Dashboard",style:TextStyle(
              color:Colors.black,
            )),
            
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications,color: Colors.red,),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
          ],
          backgroundColor: Colors.white,

        ),
        body:
        screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          type : BottomNavigationBarType.fixed,
          onTap: (index) => setState(() => currentIndex = index),
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_suggest_sharp),
              label: 'Machines',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page_sharp),
              label: 'Trails',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.poll),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined),
              label: 'Menu',

            ),
          ],

        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // Important: Remove any padding from the ListView
            children: [
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.only(left: 25 , top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://www.sfu.ca/content/sfu/communication/people/emeritus/linda-harasim/jcr:content/main_content/image.img.2000.high.png/1533071250636.png'),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15 , top: 25),
                    child: Column(

                      children: [
                        Text('Name',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,

                        ),),
                        Text('Role'),
                      ],
                    ),
                  ),
                ],
              ),
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
                      builder: (context) =>  Machine(),
                    ),
                  );
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.find_in_page_sharp),
                title: const Text('Trails'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  Trails(),
                    ),
                  );// Then close the drawer
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.poll),
                title: const Text('Reports'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  Reports(),
                    ),
                  );
                  //Navigator.pop(context);
                },
              ),

              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),

                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  ProfileDetails(),
                    ),
                  );
                  //Navigator.pop(context);
                },
              ),
              Spacer(),
              ListTile(
                title: const Text('App Settings'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  AppSettings(),
                    ),
                  );
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  Login(),
                    ),
                  );
                  //Navigator.pop(context);
                },
              ),
            ],
          ),
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
