import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {

  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){Navigator.of(context).pop();},
            icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,),
        ),
        title: Text(
          'Shipping Address',
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 150,
                child: Card(
                  elevation: 0.5,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_sharp,color: Colors.grey,),
                            Text(
                                'Select from the map',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Text('Farskore - Sharabas'),
                                  Text('Damietta'),
                                ],
                              ),
                            ),
                            Container(
                              height: 80,width: 80,
                              child: Image.asset('assets/images/map.jpg',),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.topLeft,
                  child: Text('Address Details'),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Type address details here',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 40,
            width: double.infinity,
            color: Color.fromRGBO(20, 80, 65, 1),
            child: TextButton(onPressed: (){Navigator.of(context).pushNamed('ConfirmOrderScreen');},
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
