import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/env/theme/app_theme.dart';
import 'package:e_commerce/shared/widgets/layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'https://th.bing.com/th/id/OIP.RS3I_jZrZaD1HptPvppUcAHaFj?rs=1&pid=ImgDetMain'
        'https://th.bing.com/th/id/OIP.RS3I_jZrZaD1HptPvppUcAHaFj?rs=1&pid=ImgDetMain'
        'https://th.bing.com/th/id/OIP.RS3I_jZrZaD1HptPvppUcAHaFj?rs=1&pid=ImgDetMain'
        'https://th.bing.com/th/id/OIP.RS3I_jZrZaD1HptPvppUcAHaFj?rs=1&pid=ImgDetMain'
        'https://th.bing.com/th/id/OIP.RS3I_jZrZaD1HptPvppUcAHaFj?rs=1&pid=ImgDetMain'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      ],
                    )),
              ),
            ))
        .toList();

    Size size = MediaQuery.of(context).size;

    return LayoutPage(
      requiredStack: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: CarouselSlider(
              options: CarouselOptions(
                height: size.height * 0.3,
                viewportFraction: 0.3,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: imageSliders,
            ),
          ),
          SizedBox(
            width: size.width - 30,
            child: Divider(
              thickness: 1,
              color: AppTheme.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
