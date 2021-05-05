import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selstedindex = 0;
  void _ontaped(int index) {
    setState(() {
      _selstedindex = index;
    });
  }
  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: favourate',
      style: TextStyle(color: Colors.red,fontSize: 34),

    ),
    Text(
      'Index 1: Home',
      style: TextStyle(color: Colors.red,fontSize: 34),

    ),
    Text(
      'Index 2: market',
      style: TextStyle(color: Colors.red,fontSize: 34),
    ),
    Text(
      'Index 3:pages',
      style: TextStyle(color: Colors.red,fontSize: 34),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: ListView(

          children: [
            DrawerHeader(
                child: Stack(
              children: [
                Container(
                  color: Colors.blueGrey,
                ),
                Center(
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.cyan, shape: BoxShape.circle),
                  ),
                )
              ],
            )),
            ListTile(
              title: Text('great'),
              leading: Icon(Icons.auto_awesome),
              tileColor: Colors.blueGrey,
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Container(width: double.infinity,height: 3,),
            ListTile(
              title: Text('cool'),
              leading: Icon(Icons.ac_unit_outlined),
              tileColor: Colors.blueGrey,
              onTap: (){
                Navigator.pop(context);
              },
            ),
            Container(width: double.infinity,height: 3,),
            ListTile(
              title: Text('fly'),
              leading: Icon(Icons.airplanemode_on),
              tileColor: Colors.blueGrey,
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('MyApp'),
        backgroundColor: Colors.cyan,
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.black38,
        onTap: _ontaped,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_photos),
              label: 'favourite',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
              label: 'home',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart_outlined),
              label: 'market',
              backgroundColor: Colors.blueGrey),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_awesome_motion),
              label: 'pages',
              backgroundColor: Colors.blueGrey),
        ],
        currentIndex: _selstedindex,
      ),
      body: Center(
        child: _widgetOptions[_selstedindex]
      ),
    );
  }
}

