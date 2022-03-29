import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pokedex/pokelist/widgets/pokelist_item.dart';
import 'package:pokedex/widgets/bottom_navigation.dart';

class Pokelist extends StatefulWidget {
  @override
  State<Pokelist> createState() => _PokelistState();
}

class _PokelistState extends State<Pokelist> {
  dynamic res;
  Future fetchDataPokemon() async {
    final data = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));
    if (data.statusCode == 200) {
      return jsonDecode(data.body);
    } else {
      throw Exception('Failed to finish request');
    }
  }

  @override
  void initState() {
    res = fetchDataPokemon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('POKEDEX'),
        ),
        bottomNavigationBar: BottomNavigation(),
        body: FutureBuilder(
            future: fetchDataPokemon(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Container(
                padding: EdgeInsets.only(top: 10, left: 24),
                child: Expanded(
                  child: ListView.builder(
                      itemCount: 151,
                      itemBuilder: (context, index) {
                        return pokeListItem(
                          name: res['results']['name'],
                          imageUrl: res.map<String, dynamic>(
                              (value) => value['results']['url']),
                        );
                      }),
                ),
              );
            }));
  }
}
