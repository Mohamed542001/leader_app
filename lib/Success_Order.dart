import 'package:flutter/material.dart';

class SuccessOrderScreen extends StatefulWidget {

  @override
  _SuccessOrderScreenState createState() => _SuccessOrderScreenState();
}

class _SuccessOrderScreenState extends State<SuccessOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: double.infinity,
                  width: double.infinity,
                  child: Image.asset('assets/images/buy.jpg',fit: BoxFit.fill,)
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 190,horizontal: 35),
                  child: Text(
                      'The operation was   completed successfully',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                  ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            width: double.infinity,
            color: Color.fromRGBO(20, 80, 65, 1),
            child: TextButton(onPressed: (){Navigator.of(context).pushNamed('MyBottomNavigationBar');},
              child: Text(
                'back to main',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
