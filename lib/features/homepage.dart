import 'package:flutter/material.dart';
import 'package:rent_a_bike/features/bikeDetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        color: Colors.black
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('asset/person.jpg'),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                            "Welcome",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18
                          ),
                        ),
                        Text(
                            "Abhi Tiwari",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[400],
                    hintText: 'Search Bike',
                    prefixIcon: Icon(Icons.search_outlined,color: Colors.black54,),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      topButton(heading: 'Adventure',),
                      topButton(heading: 'Cruiser'),
                      topButton(heading: 'Sportsbike'),
                      topButton(heading: 'Tourer'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                          'items',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        bikeDetails(name: 'Meteore',company: 'Royal Enfield',cost: '699',imageUrl: 'asset/meteore.jpg',),
                        bikeDetails(name: 'Scout Bobber',company: 'Indian',cost: '1499',imageUrl: 'asset/scout_bobber.jpg',),
                        bikeDetails(name: 'Rebe;',company: 'Royal Enfield',cost: '1299',imageUrl: 'asset/rebel.jpg',),
                      ],
                    )
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
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        endDetails(name: 'Hayabusa', cost: '2000', imageUrl: 'asset/hayabusa.jpg',available: true,),
                        endDetails(name: 'Classic 350', cost: '1500', imageUrl: 'asset/classic.jpg',available: false,),
                        endDetails(name: 'Rebel', cost: '1200', imageUrl: 'asset/rebel.jpg',available: false,),
                        endDetails(name: 'Meteore', cost: '1800', imageUrl: 'asset/meteore.jpg',available: true,),
                        endDetails(name: 'Scout Bobber', cost: '1600', imageUrl: 'asset/scout_bobber.jpg',available: true,),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class topButton extends StatefulWidget {

  final String heading;

  const topButton({Key? key, required this.heading}) : super(key: key);

  @override
  State<topButton> createState() => _topButtonState();
}

class _topButtonState extends State<topButton> {

  Color bb1=Colors.white;
  Color fb1=Colors.black;
  bool flag=false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          child: Text(widget.heading),
        style: ElevatedButton.styleFrom(
          backgroundColor: bb1,
          foregroundColor: fb1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          side: BorderSide(
              color: Colors.black,
          ),
        ),
        onPressed: (){
            setState(() {
              if(!flag){
                bb1=Colors.black;
                fb1=Colors.white;
              } else{
                bb1=Colors.white;
                fb1=Colors.black;
              }
              flag=!flag;
            });
        },
      ),
    );
  }
}

class bikeDetails extends StatefulWidget {

  final String name;
  final String company;
  final String cost;
  final String imageUrl;

  const bikeDetails({Key? key, required this.name, required this.company, required this.cost, required this.imageUrl}) : super(key: key);

  @override
  State<bikeDetails> createState() => _bikeDetailsState();
}

class _bikeDetailsState extends State<bikeDetails> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> BikeDetails(name: widget.name, rent: widget.cost, imageUrl: widget.imageUrl)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Colors.black)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: AssetImage(widget.imageUrl),
                fit: BoxFit.contain,
                height: 150,width: 150,),
              Text(widget.name,style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
              Text(widget.company,style: TextStyle(
                  color: Colors.black,
                  fontSize: 18
              ),),
              SizedBox(height: 10,),
              Text('${widget.cost}/ per day',style: TextStyle(
                color: Colors.black,
                fontSize: 18
              ),)
            ],
          ),
        ),
      ),
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
                    ? Text('Available', style: TextStyle(color: Colors.white),)
                    : Text('Booked', style: TextStyle(color: Colors.black),),
              )
            ),
          ],
        ),
      ),
    );
  }
}



