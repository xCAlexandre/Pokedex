import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          backgroundColor: Color.fromRGBO(217, 74, 74, 1),
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white, size: 30,),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_sharp, color: Colors.white,size: 30,),
              label: 'Pokelista',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle, color: Colors.white,size: 30,),
              label: 'Cadastro',
          ),
          ],
        );
  }
}