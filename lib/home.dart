import 'package:custom_list_tiles/tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 50,
            ),
            TileListCu(
              leading: Icon(Icons.icecream),
              subtitle: Text('Icream is good for health'),
            )
          ],
        ),
      ),
    );
  }
}
