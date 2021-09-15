import 'package:flutter/material.dart';

class ConfirmOrderScreen extends StatefulWidget {

  @override
  _ConfirmOrderScreenState createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {

  bool selected=false;
  bool selected1=false;

  isSelected(){
    setState(() {
      selected=!selected;
    });
  }
  isSelected1(){
    setState(() {
      selected1=!selected1;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.of(context).pop();},
          icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        title: Text(
          'Confirm Order',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Card(
                  elevation: 10,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shipping fee: 0.00 L.E',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Total: 0.00 L.E (Including VAT)',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(top: BorderSide(color: Colors.grey, width: 1.0))
                          ),

                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'The Order',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Order Name',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  '130 L.E',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Quantity 2',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black,width: 1.5)
                                      ),
                                      child: Text(
                                        'L',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                      width: 80,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black,width: 1.5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 10,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 3,),
                                          Text(
                                            'black',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset('assets/images/Men1.webp',width: 70,),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(top: BorderSide(color: Colors.grey, width: 1.0))
                          ),

                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Name',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  '130 L.E',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  'Quantity 2',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black,width: 1.5)
                                      ),
                                      child: Text(
                                        'L',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                      width: 80,
                                      height: 20,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.black,width: 1.5)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 10,
                                            color: Colors.black,
                                          ),
                                          SizedBox(width: 3,),
                                          Text(
                                            'black',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset('assets/images/Men1.webp',width: 70,),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.topLeft,
                child: Text('Notes'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                child: TextFormField(
                  maxLines: 3,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Type your notes here',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 40,
                        color: selected?Color.fromRGBO(110, 208, 180, 1):Colors.grey,
                        child: TextButton(
                            onPressed: ()=>isSelected(),
                            child: Text(
                              'pay online',
                              style: TextStyle(
                                color: selected?Colors.white:Colors.black,
                              ),
                            )
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 40,
                        color: selected1?Color.fromRGBO(110, 208, 180, 1):Colors.grey,
                        child: TextButton(
                            onPressed: ()=>isSelected1(),
                            child: Text(
                              'cash on delivery',
                              style: TextStyle(
                                color: selected1?Colors.white:Colors.black,
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            width: double.infinity,
            color: Color.fromRGBO(20, 80, 65, 1),
            child: TextButton(onPressed: (){Navigator.of(context).pushNamed('SuccessOrderScreen');},
              child: Text(
                'Confirm',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
