import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'transaction.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool letsElevate = false;
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Household Shopping',
      amount: 33.4,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Eid Shoes',
      amount: 88.90,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Expenses App',
        ),
      ),
      //Making Column widget so we divide our app into two sections.
      //keep points
      //By default the text take the width of its parent and card takes the width of its child , so to increase width we
      //have to keep these widget inside that widget where we can easily adjust the size
      //That is container
      //double infinity take whole width.
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: Card(
                elevation: 8,
                color: Colors.indigoAccent,
                child: Text(
                  'Chart!',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title'
                    ),
                  ), TextField(
                    decoration: InputDecoration(
                        labelText: 'Amount'
                    ),
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.purple,
                    onPressed: (){},
                  ),

                ],
              ),
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        ' \$${tx.amount}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          DateFormat.yMMMd().format(tx.date),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    ));
  }
}
