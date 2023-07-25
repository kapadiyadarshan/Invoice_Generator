import 'package:flutter/material.dart';
import 'package:invoice_generator/utils/routes_utils.dart';

import '../../Global/Global_class.dart';
import '../../utils/color_utils.dart';
import '../components/myBackButton.dart';

class items extends StatefulWidget {
  const items({Key? key}) : super(key: key);

  @override
  State<items> createState() => _itemsState();
}

class _itemsState extends State<items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: theme2
          ),),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(MyRoute.customerPage, (route) => false);
        },
            icon: Icon(Icons.arrow_back_ios,
            color: theme2,
            ),
        ),
        foregroundColor: theme2,
        actions: [
          TextButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed(MyRoute.PDFpage);
                });
              },
              child: const Text("Create PDF")
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),

        child: Column(
          children: [
            SizedBox(
              height: 710,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    Global.allItems.length, (index) =>
                      Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                        color: theme3,
                        border: Border.all(
                            width: 2,
                            color: theme1
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: theme1,
                              offset: const Offset(5, 5)
                          )
                        ]
                    ),
                    // child: Text("Name : ${Global.allItems[0]["name"]}")
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Global.allItems[index]["name"],
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),),
                            Text("₹ ${Global.allItems[index]["price"]}",
                              style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.w600
                              ),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("GST : ${Global.allItems[index]["gst"]}%",
                              style: const TextStyle(
                                fontSize: 14,
                              ),),
                            Text("Qty : ${Global.allItems[index]["qty"]}",
                              style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.w600
                              ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ),
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).pushNamed(MyRoute.itemPage);
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
                child: Text('Add Item',
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
