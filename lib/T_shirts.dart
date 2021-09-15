import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leader_app/Favorite.dart';

class TshirtScreen extends StatefulWidget {

  @override
  _TshirtScreenState createState() => _TshirtScreenState();
}

class _TshirtScreenState extends State<TshirtScreen> {

  List<FavoriteModel> model=[
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 1,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 2,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 3,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 1,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 2,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 3,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 1,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 2,

    ),
    FavoriteModel(
      price: '130 L.E',
      image: 'assets/images/Men1.webp',
      index: 3,

    ),

  ];

  double _value=0;

  isFavorite(int index,List<FavoriteModel> model){
    setState(() {
      model[index].pressed=!model[index].pressed;
    });
  }

  void sortPressed(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: 230,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 15,start: 15),
                  child: Text(
                      'Sort by',
                    style: TextStyle(
                      fontSize: 16
                    ),
                  ),
                ),



                MaterialButton(
                  onPressed: (){},
                  child: Container(
                    width: double.infinity,
                    height:25,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey, width: 1.5))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(

                          child: Text(
                            'recently arrived',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                        ),
                        Icon(Icons.done),
                      ],
                    ),
                  ),
                ),

                MaterialButton(
                  onPressed: (){},
                  child:Container(
                    width: double.infinity,
                    height:25,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey, width: 1.5))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price from lower to higher',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                MaterialButton(
                  onPressed: (){},
                  child: Container(
                    width: double.infinity,
                    height:25,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.grey, width: 1.5))
                    ),
                    child: Text(
                      'Price from higher to lower',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),

                MaterialButton(
                  onPressed: (){},
                  child: Container(
                    width: double.infinity,

                    child: Text(
                      'Highest rating',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
  void sizePressed(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: 200 ,
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Size'),
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
                        height: 35,
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
                        height: 35,
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
                        height: 35,
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
                        height: 35,
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
                        height: 35,
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
                        height: 35,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '150',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Product'),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 35,
                        color: Colors.green,
                        child: TextButton(
                            onPressed: (){},
                            child: Text(
                              'Confirm',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                        ),
                      ),
                    ],
                  ),
                ],

              ),
            ),
          );
        }
    );
  }
  void colorPressed(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: 200 ,
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Color'),

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '150',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Product'),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 35,
                        color: Colors.green,
                        child: TextButton(
                          onPressed: (){},
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],

              ),
            ),
          );
        }
    );
  }

  GlobalKey<ScaffoldState> scaffoldkey=new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        leading: IconButton(onPressed:(){Navigator.of(context).pop();},icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
        title: Text(
          'T shirts',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsetsDirectional.only(end: 15),
            child: IconButton(onPressed: (){},icon: Icon(Icons.search,color: Colors.black,size: 40,),),
          ),
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
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey, width: 1.5))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width:15 ,),
                      Container(
                        child: Text(
                            'Filter',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            Navigator.of(context).pop();
                            },
                          icon: Icon(Icons.keyboard_arrow_up),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          'Size',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: [
                          Text('L'),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_outlined)),
                        ],
                      ),
                    ],
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
                Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Row(
                        children: [
                          Text('black'),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_outlined)),
                        ],
                      ),
                    ],
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Price',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('150 L.E'),
                      Text('300 L.E')
                    ],
                  ),
                ),
                Slider(
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey,

                  min: 0.0,
                    max: 300.0,
                    value: _value,
                    onChanged: (val){
                    setState(() {
                      _value=val;
                    });
                    }
                    )

              ],
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.grey, width: 1.5))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '150',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Product'),
                          ],
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.restore_from_trash_outlined),
                        )

                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 80,
                    color: Colors.black,
                    margin: EdgeInsets.all(10),
                    child: TextButton(
                      onPressed: (){},
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            BottomAppBar(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: ()=>sortPressed(),
                      child: Row(
                        children: [
                          Text(
                              'Sort by',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: ()=>sizePressed(),
                      child: Row(
                        children: [
                          Text(
                              'Size',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: ()=>colorPressed(),

                      child: Row(
                        children: [
                          Text(
                              'Color',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,),
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(

                      height: 30,
                      decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Colors.black, width: 1.5,))
                      ),
                      child: TextButton(
                        onPressed: (){
                          scaffoldkey.currentState!.openDrawer();
                        },
                        child: Row(
                          children: [
                            Text(
                              'Filter',
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                            Icon(Icons.filter_alt_outlined,color: Colors.black,)
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
  Widget buildFavoriteItem(List<FavoriteModel> model,index)=>SingleChildScrollView(
    child: Stack (
      alignment: Alignment.bottomLeft,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  child: MaterialButton(
                    onPressed: (){},
                    child: Image.asset(
                      '${model[index].image}',
                      fit: BoxFit.fill,
                      width: 110,
                      height: 110,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '${model[index].price}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: (){
                isFavorite(index,model);
              },
              icon: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                  child: Icon(model[index].pressed?Icons.favorite:Icons.favorite_border, color: model[index].pressed?Colors.red:Colors.grey,)
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: IconButton(
            onPressed: (){Navigator.of(context).pushNamed('ProductDetails');},
            icon: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: Icon(Icons.shopping_cart_outlined,color: Colors.grey,)
            ),
          ),
        ),

      ],
    ),
  );
}
