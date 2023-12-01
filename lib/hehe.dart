import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 80,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.withOpacity(0.9),
                      Colors.purple.withOpacity(0.9),
                    ],
                  ),
                ),
              ),
              title: Row(
                children: <Widget>[
                  Image.asset(
                    'image/logoInaklug.png',
                    fit: BoxFit.contain,
                    height: 50,
                  ),
                  const Text('inaklug',
                  style: TextStyle(
                    // ISI DEH
                  ),
                  ),
                ],
              ),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Builder(
                    builder: (context){
                      return IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: (){
                          Scaffold.of(context).openEndDrawer();
                        },
                      );
                    },
                  ),
                ),
              ],
              backgroundColor: Colors.transparent,
            ),
          ],
        ),

        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset('pictures/inaklug.png'),
              ),
              ListTile(
                title: Text('Menu 1'),
                onTap: () {
                  // Action when Menu Item 1 is tapped
                },
              ),
              ListTile(
                title: Text('Menu 2'),
                onTap: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
