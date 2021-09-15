import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteModel{
  final String price;
  final String image;
  final int index;
  bool pressed=false;


  FavoriteModel({
    required this.index,
    required this.price,
    required this.image,
  });

}

class FavoriteScreen extends StatefulWidget {

  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> with SingleTickerProviderStateMixin{



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

  isFavorite(int index,List<FavoriteModel> model){
    setState(() {
      model[index].pressed=!model[index].pressed;
    });
  }
  late TabController myController;
  int selectedIndex=0;
  @override
  void initState() {
    myController=new TabController(length: 2, vsync: this,initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Favorite',
          style: TextStyle(
            color: Colors.black,
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
          indicatorWeight: 3,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 50),
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          controller: myController,
          tabs: [

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Tab(
                child: Text(
                  'Favorite Products',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Tab(

                child: Text(
                  'Recently Seen',
                ),
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
          Container(
            child: GridView.builder(
              itemCount: model.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 40),
                itemBuilder: (context,index)=>buildFavoriteItem(model,index),
            ),
          ),
          Container(
            child: GridView.builder(
              itemCount: model.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 40),
              itemBuilder: (context,index)=>buildRecentlySeenItem(model,index),
            ),
          ),
        ],
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
  Widget buildRecentlySeenItem(List<FavoriteModel> model,index)=>SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 120,
          child: MaterialButton(
            onPressed: (){Navigator.of(context).pushNamed('ProductDetails');},
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
  );
}
