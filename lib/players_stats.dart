import 'package:calculator_app/player_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/players.dart';

class PlayersStats extends StatelessWidget {
  final String id;
  final String name;
  final String role;
  final String imgUrl;

  PlayersStats(this.id, this.name, this.role, this.imgUrl);

  void selectPlayer(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return PlayerDetailScreen(id,name,role,imgUrl);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imgUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        // trailing: IconButton(
        //     icon: Icon(
        //       Icons.favorite,
        //       color: Theme.of(context).accentColor,
        //     ),
        //     onPressed: () {}),
        leading: IconButton(
          icon: Icon(
            Icons.sports_cricket,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            selectPlayer(context);
          },
        ),
        backgroundColor: Colors.black54,
        title: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            fontFamily: GoogleFonts.quicksand().fontFamily,
          ),
        ),
      ),
    );
  }
}
