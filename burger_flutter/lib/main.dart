import 'package:burger_flutter/categories.dart';
import 'package:burger_flutter/hanbergers_list.dart';
import 'package:burger_flutter/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.orange),
          bottomAppBarColor: Colors.teal),
          
      home: Hamberger(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({super.key});

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Deviver Me'),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(onPressed: null, icon: Icon(Icons.shopping_cart))
            ],
          ),
          Header(),
          Categories(),
          Hambergerslist(1),
          Hambergerslist(2),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black26,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_alert),
                  color: Colors.white,
                ),
                Spacer(),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.turned_in),
                  color: Colors.white,
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
