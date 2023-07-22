import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/color_utils.dart';
import 'package:invoice_generator/utils/routes_utils.dart';

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
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Spacer(),
            Text("No Invoices!",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: theme2,
            ),),
            const SizedBox(
              height: 6,
            ),
            const Text("Please tap on the button bellow to\ncreate an invoice.",
                textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed(MyRoute.businessPage);
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: theme1,
                  boxShadow: [
                    BoxShadow(
                      color: theme2,
                      offset: const Offset(3, 3),
                    )
                  ]
                ),
                alignment: Alignment.center,
                child: Text('Create Invoice',
                style: TextStyle(
                  color: theme2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
