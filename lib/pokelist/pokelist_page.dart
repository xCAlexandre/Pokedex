import 'package:flutter/material.dart';
import 'package:pokedex/pokelist/widgets/pokelist_item.dart';
import 'package:pokedex/widgets/bottom_navigation.dart';

class Pokelist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text('POKEDEX'),
        ),
        bottomNavigationBar: BottomNavigation(),
        body: Container(padding: EdgeInsets.only(top: 10, left: 24),
          child: ListView.builder(itemBuilder: (context,index){
            return pokeListItem(name: '', imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/25.png',);
          }),
        )
        
    );
  }
}