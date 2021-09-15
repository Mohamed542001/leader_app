  import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Setting',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,size: 40,)),
        actions: [
          IconButton(
            onPressed: (){Navigator.of(context).pushNamed('LoginScreen');},
            icon: Icon(Icons.exit_to_app_sharp),
            color: Colors.red,iconSize: 40,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(Icons.person,size: 80,color: Colors.white,),
                  ),
                      Container(
                        width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: IconButton(onPressed: (){},icon: Icon(Icons.edit,size: 20,color: Colors.white,)),
                  ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                      alignment:Alignment.topLeft,
                      child: Text('Name'),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.edit),),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    alignment:Alignment.topLeft,
                    child: Text('Email Address'),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.edit),),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    alignment:Alignment.topLeft,
                    child: Text('Phone Number'),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.edit),),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(

                      onPressed: (){
                        Navigator.of(context).pushNamed('ChangeProfilePassword');
                      },
                      child: Text(
                        'Change Password',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
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
                        'Save Changes',
                        style: TextStyle(
                          fontSize: 20,
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
      ),

    );
  }
}
