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
          child: Expanded(
            child: ListView.builder(itemCount: 151,itemBuilder: (context,index){
                  
              return index > 0 ?
               pokeListItem(name: '', imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/$index.png',) : Container();
            }),
          ),
        )
        
    );
  }
}