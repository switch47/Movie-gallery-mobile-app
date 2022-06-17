import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'MoviePage.dart';

class WhatMovie extends StatelessWidget {
  const WhatMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/mainBackground.jpg'),
                    fit: BoxFit.fill
                )
            ),
          ),
          Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 2,
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(
                            builder: (context) => const MoviePage()));
                      },
                      splashColor: Colors.black,
                      child: const Card(
                          color: Colors.lightBlueAccent,
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Center(
                            child: Text('Know What You Will Watch Today?',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                      )
                  )
              )
          ),
        ],
      )

      );
  }
}