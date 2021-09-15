import 'package:flutter/material.dart';
class ChangeProfilePassword extends StatefulWidget {

  @override
  _ChangeProfilePasswordState createState() => _ChangeProfilePasswordState();
}

class _ChangeProfilePasswordState extends State<ChangeProfilePassword> {
  @override
  void initState() {

    super.initState();
  }

  bool oldPasswordVisible=true;
  bool passwordVisible=true;
  bool confirmPasswordVisible=true;

  final TextEditingController oldPasswordController=new TextEditingController();
  final TextEditingController passwordController=new TextEditingController();
  final TextEditingController confirmPasswordController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,size: 40,)),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: oldPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: oldPasswordVisible,
                      decoration: InputDecoration(
                          labelText: 'old password',
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed:(){
                              setState(() {
                                oldPasswordVisible=!oldPasswordVisible;
                              });
                            } ,
                            icon:Icon(oldPasswordVisible?Icons.visibility:Icons.visibility_off) ,
                          )

                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible,
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



                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
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
                    'Save Changes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
