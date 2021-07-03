import 'package:calculator_app/players_stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/players.dart';

class PlayersOverviewScreen extends StatelessWidget {
  final List<Players> listedPlayers = [
    Players("t1", "Mudasir", "All-rounder", 21,
        "https://scontent.fkhi16-1.fna.fbcdn.net/v/t1.6435-0/p206x206/85199043_1069494610065746_7059241739860574208_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=da31f3&_nc_ohc=hW9lClbQ_j8AX_UfPXu&_nc_ht=scontent.fkhi16-1.fna&tp=6&oh=8dc766c97d0a39b7553bc9c1870f3329&oe=60E430FC"),
    Players("t2", "Saif ", "Batsmen", 23,
        "https://scontent.fkhi16-1.fna.fbcdn.net/v/t1.18169-0/c0.0.206.206a/p206x206/18034307_1827689814219204_5209841866883745285_n.jpg?_nc_cat=102&_nc_rgb565=1&ccb=1-3&_nc_sid=da31f3&_nc_ohc=ORM8qXMka2QAX8nUz5v&_nc_ht=scontent.fkhi16-1.fna&tp=27&oh=314bf04ab5a1e3a6ffd677506c0c0ab6&oe=60E4C28D"),
    Players("t3", "Mufakir", "All-rounder", 23,
        "https://scontent.fkhi16-1.fna.fbcdn.net/v/t1.6435-9/149016371_1195083150910042_3197073171495950248_n.jpg?_nc_cat=110&_nc_rgb565=1&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=fdPLVHcIi4gAX8E4ws4&_nc_ht=scontent.fkhi16-1.fna&oh=8c59ac11259f6b44f9d7540b9209dbee&oe=60E4751A"),
    Players("7", "Zain", "All-rounder", 23,
        "https://images.pexels.com/photos/4770620/pexels-photo-4770620.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Players("t3", "Mubeen", "Captain", 38,
        "https://images.pexels.com/photos/4770720/pexels-photo-4770720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Players Squad"),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: listedPlayers.length,
          itemBuilder: (context, i) => PlayersStats(
              listedPlayers[i].id,
              listedPlayers[i].name,
              listedPlayers[i].role,
              listedPlayers[i].imgUrl,),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
        ));
  }
}
