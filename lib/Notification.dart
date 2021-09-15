import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Notification',
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
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                            'Notice text, this text is an example text',
                          style: TextStyle(
                            fontSize: 11
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            'Notice text, this text is an example text',
                          style: TextStyle(
                            fontSize: 11
                          ),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(

                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Leader.jpg',width: 40,fit: BoxFit.fill,),
                      ),
                    ),
                    trailing:  Text(
                      '1/9/2021',
                      style: TextStyle(
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(

                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Leader.jpg',width: 40,fit: BoxFit.fill,),
                      ),
                    ),
                    trailing:  Text(
                      '1/9/2021',
                      style: TextStyle(
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(

                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Leader.jpg',width: 40,fit: BoxFit.fill,),
                      ),
                    ),
                    trailing:  Text(
                      '1/9/2021',
                      style: TextStyle(
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(

                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Leader.jpg',width: 40,fit: BoxFit.fill,),
                      ),
                    ),
                    trailing:  Text(
                      '1/9/2021',
                      style: TextStyle(
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(

                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Leader.jpg',width: 40,fit: BoxFit.fill,),
                      ),
                    ),
                    trailing:  Text(
                      '1/9/2021',
                      style: TextStyle(
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(

                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Leader.jpg',width: 40,fit: BoxFit.fill,),
                      ),
                    ),
                    trailing:  Text(
                      '1/9/2021',
                      style: TextStyle(
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Card(
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Notice text, this text is an example text',
                          style: TextStyle(
                              fontSize: 11
                          ),
                        ),
                      ],
                    ),
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: CircleAvatar(

                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/Leader.jpg',width: 40,fit: BoxFit.fill,),
                      ),
                    ),
                    trailing:  Text(
                      '1/9/2021',
                      style: TextStyle(
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
