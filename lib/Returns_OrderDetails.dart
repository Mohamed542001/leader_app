import 'package:flutter/material.dart';

class ReturnsOrderDetails extends StatefulWidget {

  @override
  _ReturnsOrderDetailsState createState() => _ReturnsOrderDetailsState();
}

class _ReturnsOrderDetailsState extends State<ReturnsOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Orders Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(onPressed: (){Navigator.of(context).pop();},icon: Icon(Icons.keyboard_arrow_left_outlined,color: Colors.black,size: 40,)), actions: [
        Container(
          margin: EdgeInsetsDirectional.only(end: 15),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(onPressed: (){},icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 40,),),
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
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: 430,
        margin: EdgeInsets.all(20),
        child: Card(
          elevation: 10,
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Number #: 454856',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(width: 5,),
                        Text(
                          'Delivered',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Text(
                  'Order Date: 8 September 2021',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Invoice Number: ####',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  'Payment method: Monetary',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5,),
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
    );
  }
}
