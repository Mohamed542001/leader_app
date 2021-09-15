import 'package:flutter/material.dart';
import 'package:leader_app/Account.dart';
import 'package:leader_app/Categories.dart';
import 'package:leader_app/Favorite.dart';
import 'package:leader_app/HomeScreen.dart';
 
class MyBottomNavigationBar extends StatefulWidget {

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int selectedIndex=0;
  void onTappedBar(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  final List<Widget> _children=[
    HomeScreen(),
    CategoriesScreen(),
    FavoriteScreen(),
    AccountScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(20, 80, 65, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromRGBO(91, 135, 112, 1.0),
        unselectedLabelStyle: TextStyle(
          color: Color.fromRGBO(91, 135, 112, 1.0),
        ),
        iconSize: 40,
        onTap: onTappedBar,
        currentIndex: selectedIndex,


        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label: 'Shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,),label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Account'),
        ],
      ),
      body: _children[selectedIndex],
    );
  }
}
