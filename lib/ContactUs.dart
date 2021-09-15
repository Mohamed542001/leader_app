import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  late Future<void> _launcher;
  String _launchWhatsUrl='https://www.whatsapp.com/';
  String _launchInstaUrl='https://www.instagram.com/';
  String _launchTwitterUrl='https://www.twitter.com/';
  String _launchFacebookUrl='https://www.facebook.com/';
  Future<void> _launchInBrowser(String url) async{
    if(await canLaunch(url)){
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String,String>{'header_key':'header_value'},
      );
    }else{
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Contact Us',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black),
        ),
        actions: [
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
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 200,
                child: Image.asset('assets/images/Leader.jpg',fit: BoxFit.fill,),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      maxLines: 5,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Write a message',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),


                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(20, 80, 65, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(

                        onPressed: (){

                        },
                        child: Text(
                          'Send',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(20),
                      alignment: Alignment.center,
                      child: Text(
                        'Or via social media',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'This text is an example of text that can be replaced',

                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){_launchInBrowser(_launchWhatsUrl);}, icon: Icon(MdiIcons.whatsapp),color: Colors.green,),
                        IconButton(onPressed: (){_launchInBrowser(_launchTwitterUrl);}, icon: Icon(MdiIcons.twitter),color: Colors.blue,),
                        IconButton(onPressed: (){_launchInBrowser(_launchFacebookUrl);}, icon: Icon(MdiIcons.facebook),color: Colors.blue,),
                        IconButton(onPressed: (){_launchInBrowser(_launchInstaUrl);}, icon: Icon(MdiIcons.instagram),color: Colors.red),
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
