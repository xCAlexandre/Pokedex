import 'package:flutter/material.dart';
import 'package:pokedex/dashboard/widgets/dashboard_button.dart';
import 'package:pokedex/pokelist/pokelist_page.dart';
import 'package:pokedex/widgets/bottom_navigation.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('POKEDEX'),
        ),
        bottomNavigationBar: BottomNavigation(currentItem: 0),
        body: Stack(
          children: [Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/poke_background.png'),
                fit: BoxFit.fill,
              ),
            )),
            Column(children: [
              Image.asset(
                'assets/poke_logo.png',
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                      DashboardButton(
                        page:Pokelist(),
                        title: Text('Veja todos os 150 Pokémons'),
                        subtitle: Text(
                          'Visualizar Pokémons ',
                          style: TextStyle(
                              color: Color.fromRGBO(217, 74, 74, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              fontFamily: 'Roboto Mono'),
                        ),
                      ),
                    Spacer(),
                    DashboardButton(
                      page: Pokelist(),
                      title: Text('Crie já seu próprio Pokémon'),
                      subtitle: Text(
                        'Cadastrar novo Pokémon',
                        style: TextStyle(
                            color: Color.fromRGBO(217, 74, 74, 1),
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            fontFamily: 'Roboto Mono'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'As circunstâncias do nascimento de alguém são irrelevantes; é o que você faz com o dom da vida que determina quem você é.',
                          style: TextStyle(
                              fontFamily: 'Roboto Mono',
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(4, 138, 191, 1),
                              fontSize: 15),
                          textAlign: TextAlign.justify,
                        ),
                        Text(
                          'Mewtwo',
                          style: TextStyle(
                              fontFamily: 'Roboto Mono',
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(4, 138, 191, 1),
                              fontSize: 15),
                        )
                      ]),
                ),
              ),
            ]),
        ]));
  }
}
