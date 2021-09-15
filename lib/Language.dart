import 'package:flutter/material.dart';


class LanguageScreen extends StatefulWidget {

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white30,
            ),
          ),
          
          Container(
            margin: EdgeInsetsDirectional.only(top: 40,start: 20,end: 20),
            child: Column(
              children: [
                Image.asset('assets/images/Leader.jpg',width: double.infinity,height: 300,fit: BoxFit.fill,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Language',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Choose the language',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // margin: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(20, 80, 65, 1),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.of(context).pushNamed('MyBottomNavigationBar');
                    },
                    child: Text(
                      'English  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // margin: EdgeInsets.all(20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.5),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      'Arabic',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
