import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/color_utils.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          backgroundColor: theme1,
          foregroundColor: theme2,
          alignment: Alignment.center,
          fixedSize: const Size(390, 50)
        ),
        child: const Text("Create Your Invoice",
          style: TextStyle(
            fontSize: 18
          ),),
      )
    );
  }
}
