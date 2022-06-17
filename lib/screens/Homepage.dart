import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:movie_gallery/screens/NewReleases.dart';

import 'Trending.dart';

// import 'MarvelScreen.dart';
// import 'PixarScreen.dart';
// import 'StarwarsScreen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Homepage createState() => Homepage();

}

class Homepage extends State<Home> {
  // int currentIndex = 0;
  // final screens = [
  //   Homepage(),
  // ];


  final List<Map<String,String>> imageList = [
    {
      "url":"https://static.wikia.nocookie.net/starwars/images/c/cc/Star-wars-logo-new-tall.jpg/revision/latest?cb=20190313021755",
      "routeName":"/starwars"
    },
    {
      "url":"https://wallpaper.dog/large/17018975.png",
      "routeName":"/marvel"
    },
    {
      "url":"https://wallpaperaccess.com/full/331622.jpg",
      "routeName":"/pixar"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            extendBodyBehindAppBar: false,
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
                    children:<Widget>[
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
                          image: AssetImage('images/mainBackground.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                ),
                Column(
                  children: <Widget>[
                    // const Text(""),
                    Container(
                      margin: const EdgeInsets.only(top:20),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          autoPlay: true,
                        ),
                        items: imageList
                            .map((i)=>ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            // child: Stack(
                            child: InkWell (
                                splashColor: Colors.blueAccent,
                                child: Stack(
                                  // fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.network(i["url"].toString(),
                                        width: 1050,
                                        height: 350,
                                        fit: BoxFit.cover,
                                      ),
                                    ]
                                ),
                                onTap: (){
                                  Navigator.pushNamed(
                                    context,
                                    i["routeName"].toString(),
                                    arguments: i,
                                  );
                                }
                            )
                        )).toList(),
                      ),
                    ),
                    const Trending(),
                    const NewReleases(),
                  ]
                ),
                Container(
                  padding: const EdgeInsets.only(top:255,left:20),
                  child: const Text(
                    "Trending",
                    style: TextStyle(
                      fontSize:23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                  )
                ),
                Container(
                  padding: const EdgeInsets.only(top:450,left:20),
                  child: const Text(
                    "New releases",
                    style: TextStyle(
                      fontSize:23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )
                  )
                ),
              ],
            )
        ),
        debugShowCheckedModeBanner: false
    );
  }
}

