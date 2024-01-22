import 'package:d3_app_food_delivery/pages/HomePage.dart';
import 'package:flutter/material.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({Key? key}) : super(key: key);

  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  void _onTap() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/starter-image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Talking Order For Delivery', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text("See resturants nearby \n nadding location", style: TextStyle(color: Colors.white, height: 1.4, fontSize: 18)),
              SizedBox(height: 100),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.yellow,
                    Colors.orange,
                  ]),
                ),
                child: MaterialButton(
                  onPressed: () => _onTap(),
                  minWidth: double.infinity,
                  child: Text(
                    "Start",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                child: Text("Now Deliver To Your Door 24/7", style: TextStyle(color: Colors.white70)),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    ));
  }
}
