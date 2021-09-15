import 'package:flutter/material.dart';
class RestorePassword extends StatefulWidget {

  @override
  _RestorePasswordState createState() => _RestorePasswordState();
}

class _RestorePasswordState extends State<RestorePassword> {
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
                      'Restore Password',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Enter the mobile number with which your account is activated',
                      style: TextStyle(
                          fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),


                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(20, 80, 65, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(

                        onPressed: (){
                          Navigator.of(context).pushNamed('VerifyRestore');
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
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
    );
  }
}
