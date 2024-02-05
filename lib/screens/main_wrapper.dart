import 'package:flutter/material.dart';
import 'package:provider_course/screens/home_page.dart';
import 'package:provider_course/screens/market_view_page.dart';
import 'package:provider_course/screens/profile_page.dart';
import 'package:provider_course/screens/watch_list_page.dart';
import 'package:provider_course/widgets/bottom_nav.dart';

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
        child: const Icon(Icons.compare_arrows_outlined),
      ),
      bottomNavigationBar: BottomNav(controller: _myPage,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: _myPage,
        children: const [
          HomePage(),
          MarketViewPage(),
          ProfilePage(),
          WatchListPage(),
        ],
      ),
    );
  }
}
