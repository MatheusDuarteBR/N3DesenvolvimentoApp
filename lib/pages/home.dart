import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.orange[300],
      body: Center(
        child: SizedBox.fromSize(
        size: Size(330, 75),
        child: RaisedButton(
            child: Text(
              'CRIPTOMOEDAS',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed:() {
              Navigator.pushNamed(context, '/Loading');
            },
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
          )
        ),
      ),

    );
  }
}