import 'package:flutter/material.dart';
class NewPassword extends StatefulWidget {

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  void initState() {

    super.initState();
  }

  bool passwordVisible=true;
  bool confirmPasswordVisible=true;

  final TextEditingController passwordController=new TextEditingController();
  final TextEditingController confirmPasswordController=new TextEditingController();
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
                      'Restore password',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Enter the new password',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible,
                      // onFieldSubmitted: (value){
                      //   print(value);
                      // },
                      // onChanged: (value){
                      //   print(value);
                      // },
                      decoration: InputDecoration(
                          labelText: 'new password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed:(){
                              setState(() {
                                passwordVisible=!passwordVisible;
                              });
                            } ,
                            icon:Icon(passwordVisible?Icons.visibility:Icons.visibility_off) ,
                          )

                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      controller: confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: confirmPasswordVisible,
                      // onFieldSubmitted: (value){
                      //   print(value);
                      // },
                      // onChanged: (value){
                      //   print(value);
                      // },
                      decoration: InputDecoration(
                          labelText: 'Confirm passcode',
                          border: OutlineInputBorder(),

                          suffixIcon: IconButton(
                            onPressed:(){
                              setState(() {
                                confirmPasswordVisible=!confirmPasswordVisible;
                              });
                            } ,
                            icon:Icon(confirmPasswordVisible?Icons.visibility:Icons.visibility_off) ,
                          )

                      ),
                    ),
                    SizedBox(
                      height: 120.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(20, 80, 65, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(

                        onPressed: (){
                          Navigator.of(context).pushNamed('LoginScreen');
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
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
