import 'package:flutter/material.dart';

class AppLanguage extends StatefulWidget {

  @override
  _AppLanguageState createState() => _AppLanguageState();
}

class _AppLanguageState extends State<AppLanguage> {

  bool arabic=false;
  bool english=false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.black,),
        ),
        title: Text(
          'Language',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsetsDirectional.only(end: 15),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(end: 15),

                  child: Stack(
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
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 135,
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey, width: 1.5,))
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                width: 40,
                                height: 20,
                                child: Image.asset('assets/images/Arabic.png'),
                              ),

                              Text(
                                'Arabic',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  arabic = !arabic;
                                });
                                },
                            child: Container(
                                decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: arabic?Colors.black:Colors.white,
                                  border: Border.all(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: arabic
                                        ? Icon(
                                      Icons.check,
                                      size: 15.0,
                                      color: Colors.white,
                                  )
                                        : Icon(
                                      Icons.check_box_outline_blank,
                                      size: 15.0,
                                      color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                width: 40,
                                height: 20,
                                child: Image.asset('assets/images/English.png'),
                              ),

                              Text(
                                'English',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  english = !english;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: english?Colors.black:Colors.white,
                                  border: Border.all(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: english
                                      ? Icon(
                                    Icons.check,
                                    size: 15.0,
                                    color: Colors.white,
                                  )
                                      : Icon(
                                    Icons.check_box_outline_blank,
                                    size: 15.0,
                                    color: Colors.white,
                                  ),
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
            ),
            Container(
              margin: EdgeInsets.all(20),
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
                  'Save Editing',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
