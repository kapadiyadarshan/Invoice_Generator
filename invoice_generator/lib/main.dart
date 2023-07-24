import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/routes_utils.dart';
import 'package:invoice_generator/views/screens/businessPage.dart';
import 'package:invoice_generator/views/screens/customerPage.dart';
import 'package:invoice_generator/views/screens/homePage.dart';
import 'package:invoice_generator/views/screens/itemPage.dart';
import 'package:invoice_generator/views/screens/items.dart';
import 'package:invoice_generator/views/screens/splashScreen.dart';

void main()
{
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
      ),

      initialRoute: MyRoute.splashScreen,
      routes: {
        MyRoute.homePage : (context) => const homePage(),
        MyRoute.splashScreen : (context) => const splashScreen(),
        MyRoute.businessPage : (context) => const businessPage(),
        MyRoute.customerPage : (context) => const customerPage(),
        MyRoute.items : (context) => const items(),
        MyRoute.itemPage : (context) => const itemPage(),
      },
    );
  }
}
