import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'cloud_ops_view.dart';
import 'test_misc_view.dart';
import 'net_ops_view.dart';
import 'misc_ops_view.dart';
import '../model/foundation.dart';

class AppHome extends StatefulWidget {
  const AppHome({required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHome> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    CloudOpsView(),
    NetOpsView(),
    TestMiscOps(),
  ];

  @override
  Widget build(BuildContext context) {
    if (isIos) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.cloud_download)),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.wifi)),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person))
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return CloudOpsView();
              case 1:
                return NetOpsView();
              case 2:
                return MiscOpsView();
              default:
                return MiscOpsView();
            }
          });
    }
    //Android Scaffold
    else {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // Body Where the content will be shown of each page index
        body: tabs[currentTabIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: onTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.cloud_download)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.network_wifi)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person))
            ]),
      );
    }
  }
}