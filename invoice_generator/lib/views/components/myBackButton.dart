import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/color_utils.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: Icon(
            Icons.arrow_back_ios,
          color: theme2,
        ),
    );
  }
}