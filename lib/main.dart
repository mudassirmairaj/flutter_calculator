import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.deepPurple,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      home: DataFromApi(),
    );
  }
}

class DataFromApi extends StatefulWidget {
  @override
  _DataFromApiState createState() => _DataFromApiState();
}

class _DataFromApiState extends State<DataFromApi> {
  Future getUserData() async {
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
    var jsonData = jsonDecode(response.body);
    List<User> _users = [];
    for (var u in jsonData) {
      User user = User(u['name'], u["email"], u["username"]);
      _users.add(user);
    }
    print(_users.length);
    return _users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(

            "Data From API",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          child: Card(
            child: FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Center(
                    child: Container(
                      child: Text("Loading...."),
                    ),
                  );
                } else
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(snapshot.data[i].name),
                        subtitle: Text(snapshot.data[i].email),
                        trailing: Text(snapshot.data[i].username),
                      );
                    },
                  );
              },
            ),
          ),
        ));
  }
}

class User {
  final String name, email, username;

  User(this.name, this.email, this.username);
}
