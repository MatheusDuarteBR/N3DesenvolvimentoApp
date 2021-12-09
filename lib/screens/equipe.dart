import 'package:flutter/material.dart';


class Conversao extends StatefulWidget {

  @override
  _ConversaoState createState() => _ConversaoState();
}

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePercentage;

class _ConversaoState extends State<Conversao> {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 95.0,
                width: 300.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/matheus-duarte.png'),
              ),
              Text('Matheus Duarte',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text('Estudante da Católica',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sun flower',
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 25.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+55 47 99233-3239',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontFamily: 'Sun flower',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'myduarte1@Hotmail.com',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontFamily: 'Sun flower',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 65.0,
                width: 300.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/khaue-souza.png'),
              ),
              Text('Khaue Souza',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text('Estudante da Católica ',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sun flower',
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 55.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+55 47 9993-9357',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontFamily: 'Sun flower',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'khauesouza@gmail.com',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontFamily: 'Sun flower',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 85.0,
                width: 300.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/leonardo-silva.png'),
              ),
              Text('Leonardo Silva',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text('Desenvolvedor Fullstack',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sun flower',
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 55.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+55 47 99121-2462',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontFamily: 'Sun flower',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'leorohrbacher@gmail.com',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontFamily: 'Sun flower',
                      fontSize: 20.0,
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