import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_gallery/game/game.dart';
import 'package:movie_gallery/screens/WhatMovie.dart';


import 'screens/TodoList.dart';
import 'screens/Homepage.dart';
import 'screens/MarvelScreen.dart';
import 'screens/PixarScreen.dart';
import 'screens/StarwarsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Mymain createState() => Mymain();
}

class Mymain extends State<MyApp> {

  int currentIndex = 0;
  final screens = [
    const Home(),
    const WhatMovie(),
    TodoList(),
    QuizApp(),
  ];
  // BottomTab createState() => BottomTab();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: screens[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              // backgroundColor: Colors.blueAccent,
              iconSize: 40,
              showUnselectedLabels: false,
              onTap: (index) => setState(() => currentIndex = index),
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home,color:Colors.blue),
                  backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  label: 'Movie',
                  icon: Icon(Icons.movie,color:Colors.blue),
                  backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(Icons.person,color:Colors.blue),
                  backgroundColor: Colors.white,
                ),
                BottomNavigationBarItem(
                  label: 'Game',
                  icon: Icon(Icons.games,color:Colors.blue),
                  backgroundColor: Colors.white,
                ),
              ]
          ),
        ),
      //   initialRoute: '/',
        routes: {
          // '/': (context) => Home(),
          // '/home': (context) => Home(),
          '/starwars': (context) => Starwars(),
          '/marvel': (context) => const Marvel(),
          '/pixar': (context) => Pixar(),
        },
    );
  }
}





