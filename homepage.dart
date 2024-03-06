// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nft_app/components/my_appbar.dart';

import 'tabs/recent_tab.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _searchButtonTapped() {}

  final List<List> tabOptions = const [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  int _currentBottomIndex = 0; // Corrected variable declaration

  void _handleBottomIndexChange(int index) {
    // Corrected method declaration
    setState(() {
      _currentBottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyBottomBar(
          // Corrected widget usage
          index: _currentBottomIndex,
          onTap: _handleBottomIndexChange,
        ),
        body: ListView(
          children: [
            MyAppBar(
              title: 'Explore collections',
              onTap: _searchButtonTapped,
            ),
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOptions,
              ),
            ),
          ],
        ),
      ),
    );
  }

  MyBottomBar({required int index, required void Function(int index) onTap}) {}
}

class MyTabBar {}

class TrendingTab {
  const TrendingTab();
}

class TopTab {
  const TopTab();
}
