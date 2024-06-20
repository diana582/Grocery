import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/Getxdependency.dart';
import 'package:grocery_app/core/Explore/pages/selected.dart';

import 'package:grocery_app/core/Cart/pages/order_success.dart';
import 'package:grocery_app/core/mainpage.dart';

void main() {
  GetxDependency();
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => Mainpage()),
        GetPage(name: '/selected', page: () => const Selected()),
        GetPage(name: '/orderplaced', page: () => const OrderPlaced())
      ],
    );
  }
}
