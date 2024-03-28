import 'package:flutter/material.dart';
import 'package:googleclone/colorrs.dart';
import 'package:googleclone/responsive_layout/responsive_layout_design.dart';
import 'package:googleclone/screen/search_screen.dart';

import 'responsive_layout/mobscreen.dart';
import 'responsive_layout/webscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Google Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: const Responsivelayout(
            mobscreen: Mobilescreen(), webscreen: Webscreen()));
  }
}
