import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Trending extends StatelessWidget {

  const Trending();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,

          child: Row(

            children: <Widget>[

              Container(
                width: 120,
                margin: const EdgeInsets.only(right: 20),
                height: 150,
                decoration: const BoxDecoration( image: DecorationImage(image: AssetImage('images/things.jpg'),
                  fit:BoxFit.cover,),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                  ),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(12.0),
                    // ),
                  ),),),
              Container(
                width: 120,
                margin: const EdgeInsets.only(right: 20),
                height: 150,
                decoration: const BoxDecoration( image: DecorationImage(image: AssetImage('images/doctor.jpg'),
                  fit:BoxFit.cover,),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                  ),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(12.0),
                    // ),
                  ),),),
              Container(
                width: 120,
                margin: const EdgeInsets.only(right: 20),
                height: 150,
                decoration: const BoxDecoration( image: DecorationImage(image: AssetImage('images/topgun.jpg'),
                  fit:BoxFit.cover,),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                  ),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                    ),
                  ),),),
              Container(
                width: 120,
                margin: const EdgeInsets.only(right: 20),
                height: 150,
                decoration: const BoxDecoration( image: DecorationImage(image: AssetImage('images/fantastic.jpg'),
                  fit:BoxFit.cover,),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)
                  ),
                ),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(12.0),
                    // ),
                  ),),),
            ],
          ),
        ),
      ),
    );
  }
}