import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/routes_utils.dart';
import 'package:invoice_generator/views/screens/homePage.dart';
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
      },
    );
  }
}
