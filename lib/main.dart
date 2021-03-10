import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/view/app_main_view.dart';
import 'src/controller/app_controller.dart';
import 'src/model/foundation.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MasterMVCApp());
}

class MasterMVCApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    if (isIos) {
      return CupertinoApp(
        theme: CupertinoThemeData(
            barBackgroundColor: CupertinoColors.activeBlue,
            primaryColor: CupertinoColors.extraLightBackgroundGray),
        home: AppHome(title: "iOS"),
 //       debugShowCheckedModeBanner: false,
      );
    } else {
      return MaterialApp(
        theme: ThemeData.dark(),
        home: AppHome(title: "Android"),
//        debugShowCheckedModeBanner: false,
      );
    }
  }
}