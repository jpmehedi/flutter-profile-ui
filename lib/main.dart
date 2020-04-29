import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/images/avatar.png"),
              ),
              Text(
                "Mr. Mehedi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: "Pacifico",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontFamily: "RopaSans",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  letterSpacing: 3.5,
                ),
              ),
              SizedBox(
                width: 200,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              CardBuilder(
                icon: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                string: "+88017 9018 0825",
              ),
              CardBuilder(
                icon: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                string: "mehediinfo@gmail.com",
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class CardBuilder extends StatelessWidget {
  CardBuilder({this.icon, this.string});
  final Icon icon;
  final String string;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Card(
        child: ListTile(
          leading: icon,
          title: Text(
            string,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),
        ),
      ),
    );
  }
}
