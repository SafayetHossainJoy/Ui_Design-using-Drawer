import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ui/about.dart';
import 'package:ui/gridveiwdemo.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState>_globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Wonder's world"),
        leading: IconButton(
          onPressed: (() {
          _globalKey.currentState!.openDrawer();
        }
          ),
          icon: Icon(Icons.menu_open),
          ),
        ),
       bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.edit,color: Colors.blue), label: 'Edit'),
        BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.blue), label: 'Share'),
      ]),
      drawer: Drawer(
        child: ListView(
          children: [
          UserAccountsDrawerHeader(accountName: Text('Safayet Hossain'), 
            accountEmail:Text("jsafayethossain12@gmail.com"),
            currentAccountPicture: 
            CircleAvatar(
              backgroundImage: AssetImage
              ('assets/images/p1.jpg'),
            ),
            ),
            
          ListTile(
              title: const Text('Home'),
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>About()));
             },
            ),
            ListTile(
              title: Text('Gallery'),
              leading: Icon(Icons.picture_in_picture),
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewDemo()));
              },
            )
            
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Welcome to my Wonder's World.\n 1. Gain a New Skill.\n 2. Boost Your Networking Abilities.\n 3. Intern with a Large Company to Gain Experience.\n 4. Become an Expert in Your Field.\n 5. Reach a Leadership Position. ",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold ,color: Colors.teal),
              
            ),
          ),
        ],
      ),
      );
  }
}