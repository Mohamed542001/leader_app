import 'package:flutter/material.dart';
class VerifyRegister extends StatefulWidget {

  @override
  _VerifyRegisterState createState() => _VerifyRegisterState();
}

class _VerifyRegisterState extends State<VerifyRegister> {
  @override
  void initState() {

    super.initState();
  }

  final TextEditingController phoneController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset('assets/images/Leader.jpg',fit: BoxFit.fill,),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                // margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Activate the mobile number',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'The verification code will be sent to your mobile number via a message',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      // onFieldSubmitted: (value){
                      //   print(value);
                      // },
                      // onChanged: (value){
                      //   print(value);
                      // },

                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),


                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(20, 80, 65, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(

                        onPressed: (){
                          Navigator.of(context).pushNamed('MyBottomNavigationBar');
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 50.0,
                    ),



                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t receive the message?',
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Text('Send Code'),
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
