import 'package:flutter/material.dart';
import 'package:leader_app/Favorite.dart';

class CartScreen extends StatefulWidget {


  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        title: Text(
            'Shopping basket',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '4 products',
              style: TextStyle(
                color: Colors.black
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text('Total : '),
                    Text(
                      '1200 L.E',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 40,
                width: double.infinity,
                color: Color.fromRGBO(20, 80, 65, 1),
                child: TextButton(
                  onPressed: (){Navigator.of(context).pushNamed('ShippingAddress');},
                  child: Text(
                    'Complete the order',
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
        ),
      ),
    );
  }
}
