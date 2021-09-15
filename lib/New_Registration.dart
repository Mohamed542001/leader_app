import 'package:flutter/material.dart';
class NewRegistration extends StatefulWidget {

  @override
  _NewRegistrationState createState() => _NewRegistrationState();
}

class _NewRegistrationState extends State<NewRegistration> {
  bool check=false;
  @override
  void initState() {

    super.initState();
  }
  bool passwordVisible=true;
  bool confirmPasswordVisible=true;

  final TextEditingController phoneController=new TextEditingController();
  final TextEditingController emailController=new TextEditingController();

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
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'New Registration',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),

                    TextFormField(
                      // onFieldSubmitted: (value){
                      //   print(value);
                      // },
                      // onChanged: (value){
                      //   print(value);
                      // },

                      decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(),


                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,


                      decoration: InputDecoration(
                        labelText: 'Email Address',
                        border: OutlineInputBorder(),


                      ),
                    ),

                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible,
                      decoration: InputDecoration(
                          labelText: 'password',
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
                      height: 10.0,
                    ),
                    TextFormField(
                      controller: confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: confirmPasswordVisible,
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
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Checkbox(value: check, onChanged: (val){
                          setState(() {
                            check = val!;
                          });
                        }),
                        Text('Agree to the'),
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('TermsAndConditions');
                          },
                          child: Text('terms and conditions'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(20, 80, 65, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(

                        onPressed: (){
                          Navigator.of(context).pushNamed('VerifyRegister');
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                        ),
                        TextButton(onPressed: (){Navigator.of(context).pushNamed('LoginScreen');}, child: Text('Login'),),
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
