import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:viinon/gen/colors.gen.dart';
import 'package:viinon/screens/main_screen/main_screen.dart';
import 'package:viinon/screens/utils/app_navigator.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int currentIndex = 0;

  final List<String> imagePaths = [
    'assets/slider/animation1.gif',
    'assets/slider/animation2.gif',
    'assets/slider/animation3.gif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CarouselSlider(
        options: CarouselOptions(
          height: double.infinity,
          enlargeCenterPage: false,
          autoPlay: false,
          aspectRatio: 16 / 9,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        items: imagePaths.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(
                imagePath,
                fit: BoxFit.fitWidth,
              );
            },
          );
        }).toList(),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => AppNavigator.pushReplacement(context, const MainScreen()),
        child: Container(
          height: 50.0,
          width: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: ColorName.primaryGreen, width: 2.0),
          ),
          child: const Icon(
            Icons.chevron_right,
            size: 40.0,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
