import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  late int currentItem;

 BottomNavigation({Key? key, this.currentItem = 0, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          onTap: (int value){
              switch (value) {
                case 0:
                  currentItem = 0;
                  break;
                default:
                  currentItem = 1;

              }
          },
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          backgroundColor: Color.fromRGBO(217, 74, 74, 1),
          currentIndex: currentItem,
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