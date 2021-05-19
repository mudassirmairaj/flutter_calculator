import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doDivide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }


  void doMultiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void clearScreen(){
    setState(() {
      t1.text = "0";
      t2.text = '0';
      num1 = 0;
      num2 = 0;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Output: $sum',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Enter Number 1",
                hintText: "Value 1",
              ),
            ),
            TextFormField(
              controller: t2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Enter Number 2", hintText: "Value 2"),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.lightBlue,

                  onPressed: () {
                    doAddition();
                  },
                  child: Text("+"),
                ),
                MaterialButton(
                  color: Colors.lightBlue,

                  onPressed: () {
                    doSubtraction();
                  },
                  child: Text("-"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  color: Colors.lightBlue,

                  onPressed: () {
                    doMultiply();
                  },
                  child: Text("*"),
                ),
                MaterialButton(
                  color: Colors.lightBlue,

                  onPressed: () {
                    doDivide();
                  },
                  child: Text("/"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    clearScreen();
                  },
                  child: Text("clear"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
