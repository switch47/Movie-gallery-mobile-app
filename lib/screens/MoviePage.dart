
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:async';
import 'dart:math';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  MoviePageScreen createState() => MoviePageScreen();
}

class MoviePageScreen extends State<MoviePage> {

  dynamic listImagesnotFound = [
    "https://i.pinimg.com/736x/b9/c3/ea/b9c3eac06df0a507dc92b30a5efc939a.jpg",
    "https://i.pinimg.com/originals/7b/a3/c3/7ba3c31ae368511e0b3b2ae4e5eececb.jpg",
    "https://m.media-amazon.com/images/I/81SWlvJvkTL._AC_SL1500_.jpg",
    "https://i.etsystatic.com/22974224/r/il/3a76f2/3007295613/il_fullxfull.3007295613_k8u6.jpg",
    "https://storage.googleapis.com/stateless-kengji-co/2020/11/2adbda3a-mv5bm2ewmmrhmmutmzbmms00zdq3ltg4ogetnjlkodk3ztmxmmjlxkeyxkfqcgdeqxvymjm5odk1ndu@._v1_.jpg",
    "https://pbs.twimg.com/media/FR2T-sKVEAAtkXR?format=jpg&name=900x900",
    "https://cdn.europosters.eu/image/1300/art-photo/fantastic-beasts-the-secrets-of-dumbledore-i123338.jpg",
    "https://i.pinimg.com/736x/74/47/72/74477282614c6a1efad9c556739bda50.jpg",
    "https://w0.peakpx.com/wallpaper/182/3/HD-wallpaper-peaky-blinders-casaco-serie-pe.jpg",
  ];
  late Random rnd;

  Widget buildImage(BuildContext context) {
    int min = 0;
    int max = listImagesnotFound.length-1;
    rnd = Random();
    int r = min + rnd.nextInt(max - min);
    String imageName  = listImagesnotFound[r].toString();
    return Image.network(imageName);
  }

  @override
  Widget build(BuildContext context) {
    return buildImage(context);
  }

}