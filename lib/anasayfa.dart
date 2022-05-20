import 'package:bagisuygulamasi/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'kan_iste.dart';
import 'kan_ver.dart';
import 'profile.dart';


class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  int _currentIndex = 0;

  final tabs=[
    ProfileScreen(),
    KanBul(),
    KanVer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromRGBO(0, 100, 128, 1),
          currentIndex: _currentIndex,
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Profil",
              backgroundColor: Color.fromRGBO(0, 100, 128, 1),

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Kan Bul",
                backgroundColor: Color.fromRGBO(0, 100, 128, 1)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Kan Ver",
              backgroundColor: Color.fromRGBO(0, 100, 128, 1),

            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: tabs[_currentIndex]
    );
  }
}

