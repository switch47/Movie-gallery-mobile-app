import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Starwars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/head.png'),
                      )
                  )
              ),
              title: Stack(
                  children: <Widget>[
                    Text(
                        'MOVIE-GALLERY',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.red[700]!,
                          fontSize: 30,
                        )
                    ),
                    const Text(
                        'MOVIE-GALLERY',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        )
                    )
                  ]
              )
          ),
          body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/starwars-background.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ]
          ),
        ),
        debugShowCheckedModeBanner: false
    );
  }
}

