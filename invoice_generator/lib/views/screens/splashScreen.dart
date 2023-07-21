import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:invoice_generator/main.dart';
import 'package:invoice_generator/utils/color_utils.dart';
import 'package:invoice_generator/utils/routes_utils.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  ChangePage()
  {
    Timer.periodic(Duration(seconds: 4), (timer) {
      Navigator.of(context).pushReplacementNamed(MyRoute.homePage);
      timer.cancel();
    },);
  }

  @override
  void initState() {
    super.initState();
    ChangePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 4,
            ),
            Image.asset("assets/images/invoice(1).gif",scale: 1.5,),
            Text("Invoice Generator",
              style: TextStyle(
                color: theme2,
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),),
            const Spacer(),
            SpinKitFadingCircle(
              size: 56,
              color: theme2,
            ),
            const Spacer(
              flex: 3,
            )
          ],
        )
      ),
      backgroundColor: theme1,
    );
  }
}
