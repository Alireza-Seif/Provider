import 'package:flutter/material.dart';
import 'package:provider_course/screens/home_page.dart';
import 'package:provider_course/screens/market_view_page.dart';
import 'package:provider_course/screens/profile_page.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  final PageController _myPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: PageView(
        controller: _myPage,
        children: [
          HomePage(),
          MarketViewPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
