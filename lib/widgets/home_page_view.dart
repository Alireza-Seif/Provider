import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  HomePageView({super.key, required this.controller});

  var controller;

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  var images = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: [
        myPages(images[0]),
        myPages(images[1]),
        myPages(images[2]),
        myPages(images[3]),
      ],
    );
  }
}

Widget myPages(String image) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(Radius.circular(30)),
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.fill,
    ),
  );
}
