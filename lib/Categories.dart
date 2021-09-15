import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> with SingleTickerProviderStateMixin{
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
        title: Text(
          'Departments',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: TabBarView(
        controller: myController,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Wrap(

                  children: [
                    TextButton(
                      onPressed: (){},
                      child:
                      Container(
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
                        child: TextButton(
                            onPressed: (){Navigator.of(context).pushNamed('TshirtScreen');},
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                    TextButton(
                      onPressed: (){},
                      child:
                      Container(
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
                        child: TextButton(
                            onPressed: (){},
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
                        width: 150,
                        color: Color.fromRGBO(210, 204, 204, 0.3),
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
