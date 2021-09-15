import 'package:flutter/material.dart';
import 'package:leader_app/Favorite.dart';

class ProductDetails extends StatefulWidget {

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {


  bool favorite=false;
  isFavorite(){
    setState(() {
      favorite=!favorite;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        child: Card(
          elevation: 10,
          child: Row(

            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(onPressed: ()=>isFavorite(),
                    icon: Icon(favorite?Icons.favorite:Icons.favorite_border),color: favorite?Colors.red:Colors.grey,iconSize: 50,),
              ),
              Container(
                width: 250,
                color: Color.fromRGBO(20, 80, 65, 1),
                  child: TextButton(
                    onPressed: (){Navigator.of(context).pushNamed('CartScreen',);},
                      child: Text(
                          'add to cart',
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


      body: Container(
        height: 650,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        height: 300,
                        child: PageView(
                          children: [
                            Image.asset('assets/images/Men1.webp',fit: BoxFit.fill,),
                            Image.asset('assets/images/Jacket11.webp',fit: BoxFit.fill,),
                            Image.asset('assets/images/Jacket12.webp',fit: BoxFit.fill,),
                            Image.asset('assets/images/Jacket13.webp',fit: BoxFit.fill,),
                            Image.asset('assets/images/Jacket14.webp',fit: BoxFit.fill,),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 40,left: 10),
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
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,right: 10),
                    child:IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                        'Havan jacket for men',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        '300 L.E',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Color',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                    Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 35,
                          child: TextButton(onPressed: (){},
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  'blue',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 35,
                          child: TextButton(onPressed: (){},
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  'red',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 35,
                          child: TextButton(onPressed: (){},
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  'grey',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 35,
                          child: TextButton(onPressed: (){},
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  'green',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 35,
                          child: TextButton(onPressed: (){},
                            child: Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 15,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 5,),
                                Text(
                                  'black',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Size',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                    Wrap(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 30,
                          child: TextButton(onPressed: (){},
                            child: Text(
                              'S',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 30,
                          child: TextButton(onPressed: (){},
                            child: Text(
                              'M',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 30,
                          child: TextButton(onPressed: (){},
                            child: Text(
                              'L',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 30,
                          child: TextButton(onPressed: (){},
                            child: Text(
                              'XL',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 30,
                          child: TextButton(onPressed: (){},
                            child: Text(
                              'XXL',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 30,
                          child: TextButton(onPressed: (){},
                            child: Text(
                              'XXXL',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          width: 80,
                          height: 30,
                          child: TextButton(onPressed: (){},
                            child: Text(
                              'XXXXL',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
