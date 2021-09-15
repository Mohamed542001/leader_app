import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController myController;
  int selectedIndex=0;
  @override
  void initState() {
    myController=new TabController(length: 7, vsync: this,initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/Leader.jpg',height: 100,width: 100,fit: BoxFit.fill,),
        leading: Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed('NotificationScreen');
              },
              icon: Icon(Icons.notifications_none,color: Colors.black,size: 40,),
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
        actions: [
          IconButton(onPressed: (){},icon: Icon(Icons.search,color: Colors.black,size: 40,),),
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
                  'Men',
              ),
            ),
            Tab(
              child: Text(
                  'Women',
              ),
            ),
            Tab(
              child: Text(
                  'Kids',
              ),
            ),
            Tab(
              child: Text(
                  'Shoes',
              ),
            ),
            Tab(
              child: Text(
                  'House',
              ),
            ),
            Tab(
              child: Text(
                  'Smart phones',
              ),
            ),
            Tab(
              child: Text(
                  'Electrical devices',
              ),
            ),

          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: TabBarView(
        controller: myController,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 130,
                  child: PageView(
                    children: [
                      Image.asset('assets/images/New1.jpg',fit: BoxFit.fill,),
                      Image.asset('assets/images/New2.jpg',fit: BoxFit.fill,),
                      Image.asset('assets/images/New3.jpg',fit: BoxFit.fill,),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'New Arrival',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              onPressed: (){Navigator.of(context).pushNamed('ProductDetails');},
                              child: Image.asset(
                                'assets/images/Men1.webp',
                                fit: BoxFit.fill,
                                width: 110,
                                height: 135,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '300 L.E',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                                onPressed: (){},
                                child: Image.asset(
                                  'assets/images/Men2.jpg',
                                  fit: BoxFit.fill,
                                  width: 110,
                                  height: 135,
                                )
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '250 L.E',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              onPressed: (){},
                              child: Image.asset(
                                'assets/images/Men3.jpg',
                                fit: BoxFit.fill,
                                width: 110,
                                height: 135,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '200 L.E',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              onPressed: (){},
                              child: Image.asset(
                                'assets/images/Men4.jpg',
                                fit: BoxFit.fill,
                                width: 110,
                                height: 135,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '150 L.E',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MaterialButton(
                              onPressed: (){},
                              child: Image.asset(
                                'assets/images/Men5.jpg',
                                fit: BoxFit.fill,
                                width: 110,
                                height: 135,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                '100 L.E',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsetsDirectional.only(start: 10,end: 10,bottom: 5),
                  child: Text(
                    'Departments',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    TextButton(
                      onPressed: (){},
                      child:
                          Container(
                            width: 130,
                            color: Color.fromRGBO(210, 204, 204, 1),
                              child: TextButton(
                                  onPressed: (){
                                    Navigator.of(context).pushNamed('TshirtScreen');
                                  },
                                  child: Text(
                                      'T shirts',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                              ),
                          ),
                      ),
                    TextButton(
                      onPressed: (){},
                      child:
                          Container(
                            width: 130,
                            color: Color.fromRGBO(210, 204, 204, 1),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                      'Trousers',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                              ),
                          ),
                      ),
                    TextButton(
                      onPressed: (){},
                      child:
                          Container(
                            width: 130,
                            color: Color.fromRGBO(210, 204, 204, 1),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                      'Shoes',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                              ),
                          ),
                      ),
                    TextButton(
                      onPressed: (){},
                      child:
                          Container(
                            width: 130,
                            color: Color.fromRGBO(210, 204, 204, 1),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                      'Jackets',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                              ),
                          ),
                      ),
                    TextButton(
                      onPressed: (){},
                      child:
                          Container(
                            width: 130,
                            color: Color.fromRGBO(210, 204, 204, 1),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                      'Watches',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                              ),
                          ),
                      ),
                    TextButton(
                      onPressed: (){},
                      child:
                          Container(
                            width: 130,
                            color: Color.fromRGBO(210, 204, 204, 1),
                              child: TextButton(
                                  onPressed: (){},
                                  child: Text(
                                      'Sportswear',
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                              ),
                          ),
                      ),

                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Text(''),
          ),
          Container(
            child: Text(''),
          ),
          Container(
            child: Text(''),
          ),
          Container(
            child: Text(''),
          ),
          Container(
            child: Text(''),
          ),
          Container(
            child: Text(''),
          ),


        ],
      ),
    );
  }
}
