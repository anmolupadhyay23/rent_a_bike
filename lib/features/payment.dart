import 'package:flutter/material.dart';

class Payment extends StatefulWidget {

  const Payment({Key? key,}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children:  [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200]
                        ),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_outlined, color: Colors.black,)
                        )
                    ),
                    SizedBox(width: 10,),
                    Container(
                        height: MediaQuery.of(context).size.height*0.07,
                        width: MediaQuery.of(context).size.width*0.7,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text("Check Out"),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                    color: Colors.grey
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey),
                              color: Color(0XFFE0E0E0)
                          ),
                          child: Container(
                            color: Colors.white24,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                        "Start Date",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text(
                                        "09-06-2021",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.calendar_month,)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey),
                              color: Color(0XFFE0E0E0)
                          ),
                          child: Container(
                            color: Colors.white24,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      "End Date",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const Text(
                                      "12-06-2021",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                Icon(Icons.calendar_month,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      hintText: 'Apply Coupon',
                      hintStyle: TextStyle(
                        fontSize: 18
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 40),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Details',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(height: 2, child: Container(color: Colors.grey,),),
                ),
                data(heading: 'Days',data_value: '4'),
                data(heading: 'Rent',data_value: '5996'),
                data(heading: 'Additional Items',data_value: '6400'),
                data(heading: 'Coupon Discount',data_value: '396'),
                SizedBox(height: 10,),
                SizedBox(height: 2, child: Container(color: Colors.grey,),),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Amount',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '₹ 12000',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.8,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'PAY',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),
                ),
              )
          )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class data extends StatefulWidget {

  final String heading;
  final String data_value;

  const data({Key? key, required this.data_value, required this.heading}) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              widget.heading,
            style: TextStyle(
              fontSize: 18
            ),
          ),
          Text(
              widget.data_value,
            style: TextStyle(
                fontSize: 18
            ),
          ),
        ],
      ),
    );
  }
}

