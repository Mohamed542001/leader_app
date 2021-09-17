import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(5),
          child: Image.asset('assets/images/Profile.jpg',width: 50,height: 60,),
        ),
        title: Column(
          children: [
            Text(
              'Welcome Mohamed',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),
            ),
            Text(
              '+20 11 4303 5368',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsetsDirectional.only(end: 15),
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed('SettingScreen');
              },
              icon: Icon(Icons.settings_outlined, color: Colors.black,size: 40,),
            ),
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
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 130,
              child: Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'My Orders',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed('OrdersScreen');
                            },
                              child: Text('Show All')
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity, // استخدم ال MediaQuery
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                width: 53,
                                height: 40,
                                child: MaterialButton( // استخدم Inkwell العادي
                                  // ومستخدمش ال MaterialButton علشان شكلها ف ابل
                                    onPressed: (){},
                                  child: Column(
                                    children: [
                                      Icon(Icons.event_note_outlined,size: 23,),
                                      SizedBox(height: 2,),
                                      Text(
                                          'New',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 83,
                                height: 40,
                                child: MaterialButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Icon(Icons.markunread_mailbox_sharp,size: 23,),
                                      SizedBox(height: 2,),
                                      Text(
                                        'Processing',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 72,
                                height: 40,
                                child: MaterialButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Icon(Icons.local_car_wash,size: 23,),
                                      SizedBox(height: 2,),
                                      Text(
                                        'Shipping',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 40,
                                child: MaterialButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Icon(Icons.event_note_outlined,size: 23,),
                                      SizedBox(height: 2,),
                                      Text(
                                        'Finished',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 40,
                                child: MaterialButton(
                                  onPressed: (){},
                                  child: Column(
                                    children: [
                                      Icon(Icons.event_note_outlined,size: 23,),
                                      SizedBox(height: 2,),
                                      Text(
                                        'Returns',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
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
              ),
            ),
            Container(
              width: double.infinity,
              height: 350,
              child: Card(
                elevation: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Other',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.language),
                          title: Text('Language'),
                          trailing:Icon(Icons.keyboard_arrow_right,color: Colors.black,) ,
                          onTap: (){Navigator.of(context).pushNamed('AppLanguage');},
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(

                              border: Border(bottom: BorderSide(color: Colors.grey, width: 0.7))
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.help_outline),
                          title: Text('About App'),
                          trailing:Icon(Icons.keyboard_arrow_right,color: Colors.black,) ,
                          onTap: (){Navigator.of(context).pushNamed('AboutScreen');},
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(

                              border: Border(bottom: BorderSide(color: Colors.grey, width: 0.7))
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.list_alt_outlined),
                          title: Text('Terms and Conditions'),
                          trailing:Icon(Icons.keyboard_arrow_right,color: Colors.black,) ,
                          onTap: (){Navigator.of(context).pushNamed('TermsAndConditions');},
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(

                              border: Border(bottom: BorderSide(color: Colors.grey, width: 0.7))
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.ring_volume),
                          title: Text('Contact Us'),
                          trailing:Icon(Icons.keyboard_arrow_right,color: Colors.black,) ,
                          onTap: (){Navigator.of(context).pushNamed('ContactUs');},
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(

                              border: Border(bottom: BorderSide(color: Colors.grey, width: 0.7))
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.share_outlined),
                          title: Text('Share the app'),
                          trailing:Icon(Icons.keyboard_arrow_right,color: Colors.black,) ,
                          onTap: (){},
                        ),

                      ],
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
}
