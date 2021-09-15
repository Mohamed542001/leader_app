import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {

  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
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
            'Terms And Conditions',
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
      body:  SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset('assets/images/Leader.jpg',fit: BoxFit.fill,),
                  ),
                  SizedBox(height: 10,),
                  Text(
                      """This text is an example of a text that can be replaced in the same
Space, this text was generated from the English text generator
Where you can generate such text or many texts
other, in addition to increasing the number of letters it generates
.app
If you need more paragraphs the generator lets you
English text Increase the number of paragraphs as you want, the text will not appear
Divided and does not contain grammatical errors, the English text generator is useful
Website designers in particular, where needs
The customer often has to see a real picture
website design
Hence, the designer must put temporary texts on the
Design to show the customer the full form, the role of the text generator
The English text saves the designer the trouble of searching for an alternative text
It is related to the topic that the design is talking about, so it appears
.inappropriately
This text can be installed on any design without
Problem it won't look like copied, disorganized, disorganized text
, coordinated, or even incomprehensible. Because it is still stiff and temporary
                    """
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
