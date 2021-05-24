import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter App'),
      ),
      //Making Column widget so we divide our app into two sections.
      //keep points
      //By default the text take the width of its parent and card takes the width of its child , so to increase width we
      //have to keep these widget inside that widget where we can easily adjust the size
      //That is container
      //double infinity take whole width.
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
                elevation: 8,
                color: Colors.indigoAccent,
                child: Text(
                  'Chart!',
                  style: TextStyle(color: Colors.white,),
                )),
          ),
          Card(
            color: Colors.lightBlue,
            child: Text(
              'List of TX',
              style: TextStyle( color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
