import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper_flutter/change_notifier/input_item_change_notifier.dart';
import 'package:shopper_flutter/change_notifier/shopee_item_change_notifier.dart';
import 'package:shopper_flutter/pages/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => InputItemChangeNotifier()),
        ChangeNotifierProvider(create: (_) => ShopeeItemChangeNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}