import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerDetailScreen extends StatelessWidget {
  final String playerId;
  final String playerName;
  final String playerRole;
  final String playerImage;

  PlayerDetailScreen(
      this.playerId, this.playerName, this.playerRole, this.playerImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(playerName),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                playerImage,
                fit: BoxFit.cover,
              ),
            ),
           Container(
             width: double.infinity,
             decoration: BoxDecoration(
             border: Border.all(color: Theme.of(context).accentColor, width: 3),
           ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [ Container(
                 padding: EdgeInsets.all(10),
                 child: Text('Name: $playerName',style: TextStyle(fontSize: 18),),
               ),
                 Divider(),
                 Container(
                   padding: EdgeInsets.all(10),
                   child: Text('Role: $playerRole',style: TextStyle(fontSize: 20),),
                 ),],
             ),
           )
          ],
        ));
  }

}
