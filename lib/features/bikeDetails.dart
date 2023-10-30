import 'package:flutter/material.dart';
import 'package:rent_a_bike/features/payment.dart';

class BikeDetails extends StatefulWidget {

  final String name;
  final String rent;
  final String imageUrl;

  const BikeDetails({Key? key, required this.name, required this.rent, required this.imageUrl}) : super(key: key);

  @override
  State<BikeDetails> createState() => _BikeDetailsState();
}

class _BikeDetailsState extends State<BikeDetails> {

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
                          child: const Text("Bike Details"),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children:  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                            "Indian",
                          style: TextStyle(
                            fontSize: 25
                          ),
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 40,),
                        details(heading: 'Category',data: 'Cruiser'),
                        SizedBox(height: 40,),
                        details(heading: 'Displacement',data: '1133cc'),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image(
                        image: AssetImage(widget.imageUrl),
                        height: MediaQuery.of(context).size.height*0.4,
                        width: MediaQuery.of(context).size.width*0.5,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    details(heading: 'Max. speed',data: '124 km/h'),
                    SizedBox(width: 20,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Payment()));
                      },
                        child: rent(heading: 'Rent',data: widget.rent)
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Recently',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'viewed',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                endDetails(name: 'Riding jacket', cost: '800', imageUrl: 'asset/riding_jacket.jpg', available: true),
                endDetails(name: 'Riding gloves', cost: '400', imageUrl: 'asset/riding_gloves.jpg', available: false),
                endDetails(name: 'Helmet', cost: '1600', imageUrl: 'asset/helmet.jpg', available: true),
                endDetails(name: 'Riding jacket', cost: '800', imageUrl: 'asset/riding_jacket.jpg', available: true)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class details extends StatefulWidget {

  final String data;
  final String heading;

  const details({Key? key, required this.data, required this.heading}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.07,
        width: MediaQuery.of(context).size.width*0.38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.heading,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18
                ),
              ),
              Text(
                widget.data,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                ),
              ),
            ],
          ),
        )
    );
  }
}

class rent extends StatefulWidget {

  final String heading;
  final String data;

  const rent({Key? key, required this.heading, required this.data}) : super(key: key);

  @override
  State<rent> createState() => _rentState();
}

class _rentState extends State<rent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.07,
        width: MediaQuery.of(context).size.width*0.38,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.heading,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
              Text(
                widget.data,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),
              ),
            ],
          ),
        )
    );
  }
}

class endDetails extends StatefulWidget {

  final String name;
  final String cost;
  final String imageUrl;
  final bool available;

  const endDetails({Key? key, required this.name, required this.cost, required this.imageUrl, required this.available}) : super(key: key);

  @override
  State<endDetails> createState() => _endDetailsState();
}

class _endDetailsState extends State<endDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Colors.black)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)
                ),
                child: Image(image: AssetImage(widget.imageUrl),
                  fit: BoxFit.contain,
                  height: 50,width: 50,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  ),
                  Text('${widget.cost}/ per day',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18
                  ),)
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20,left: 100),
                child: Container(
                  decoration: widget.available==true
                      ? BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)
                  )
                      : BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: widget.available == true
                      ? Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width*0.15,
                      height: MediaQuery.of(context).size.height*0.03,
                      child: Text('1', style: TextStyle(color: Colors.white),))
                      : Container(
                    alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width*0.15,
                      height: MediaQuery.of(context).size.height*0.03,
                      child: Text('Add', style: TextStyle(color: Colors.black),)),
                )
            ),
          ],
        ),
      ),
    );
  }
}


