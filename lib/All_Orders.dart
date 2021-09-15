import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> with SingleTickerProviderStateMixin{
  late TabController myController;
  int selectedIndex=0;
  @override
  void initState() {
    myController=new TabController(length: 6, vsync: this,initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'My Orders',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,size: 40,)),
        actions: [
          Container(
            margin: EdgeInsetsDirectional.only(end: 15),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  onPressed: (){Navigator.of(context).pushNamed('CartScreen');},
                  icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 40,),
                ),
                CircleAvatar(

                  radius: 9,
                  backgroundColor: Colors.red,
                  child: Text(
                    '3',
                    style: TextStyle(
                      fontSize: 10  ,
                      color: Colors.white,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          controller: myController,
          tabs: [
            Tab(
              child: Text(
                'All Orders',
              ),
            ),
            Tab(
              child: Text(
                'New',
              ),
            ),
            Tab(
              child: Text(
                'Processing',
              ),
            ),
            Tab(
              child: Text(
                'Shipping',
              ),
            ),
            Tab(
              child: Text(
                'Finished',
              ),
            ),
            Tab(
              child: Text(
                'Returns',
              ),
            ),


          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: TabBarView(
        controller: myController,
        children: [
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'New',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('NewOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                      'Processing',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).pushNamed('ProcessingOrderDetails');
                                },
                                child: Text(
                                    'Show Details',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Processing',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('ProcessingOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),

                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'New',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('NewOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'New',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('NewOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'New',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('NewOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),

                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Processing',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('ProcessingOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Processing',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('ProcessingOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Processing',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('ProcessingOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),

                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Shipping',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('ShippingOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Shipping',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('ShippingOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Shipping',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('ShippingOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),

                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Finished',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('FinishedOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Finished',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('FinishedOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),
                  Card(

                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Order Number #:454856',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.green,
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    'Finished',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                '5 Products',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Total:1200 L.E',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                  children: [
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men1.webp',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men2.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men3.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men4.jpg',),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 80,
                                      child: Image.asset('assets/images/Men5.jpg',),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 1.5)
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed('FinishedOrderDetails');
                              },
                              child: Text(
                                'Show Details',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    elevation: 10,
                  ),

                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Card(

                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Order Number #:454856',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 7,
                                        backgroundColor: Colors.green,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        'Delivered',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '5 Products',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Total:1200 L.E',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men1.webp',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men2.jpg',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men3.jpg',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men4.jpg',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men5.jpg',),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,width: 1.5)
                                ),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.of(context).pushNamed('DeliveredOrderDetails');
                                  },
                                  child: Text(
                                    'Show Details',
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        elevation: 10,
                      ),
                      Card(

                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Order Number #:454856',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 7,
                                        backgroundColor: Colors.green,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        'Delivered',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '5 Products',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Total:1200 L.E',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men1.webp',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men2.jpg',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men3.jpg',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men4.jpg',),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 80,
                                          child: Image.asset('assets/images/Men5.jpg',),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,width: 1.5)
                                ),
                                child: TextButton(
                                  onPressed: (){
                                    Navigator.of(context).pushNamed('DeliveredOrderDetails');
                                  },
                                  child: Text(
                                    'Show Details',
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        elevation: 10,
                      ),
                    ],
                  ),
                  SizedBox(height: 95,),
                  Container(
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(20, 80, 65, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(

                      onPressed: (){

                      },
                      child: Text(
                        'return request',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),



        ],
      ),
    );
  }
}
