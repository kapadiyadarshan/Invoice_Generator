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
        leading: const MyBackButton(),
        foregroundColor: theme2,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(MyRoute.itemPage);
              },
              icon: Icon(Icons.add)
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),

        child: Column(
          children: [
            // SizedBox(
            //   height: 710,
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: [
            //         //Item Container
            //         Container(
            //           width: double.infinity,
            //           padding: const EdgeInsets.all(12),
            //           margin: const EdgeInsets.symmetric(vertical: 6),
            //           decoration: BoxDecoration(
            //               color: theme3,
            //               border: Border.all(
            //                   width: 2,
            //                   color: theme1
            //               ),
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: theme1,
            //                     offset: const Offset(5, 5)
            //                 )
            //               ]
            //           ),
            //           // child: Text("Name : ${Global.allItems[0]["name"]}")
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text(Global.allItems[0]["name"],
            //                   style: const TextStyle(
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.bold
            //                   ),),
            //                   Text("₹ ${Global.allItems[0]["price"]}",
            //                     style: const TextStyle(
            //                         fontSize: 14,
            //                         // fontWeight: FontWeight.w600
            //                     ),),
            //                 ],
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("GST : ${Global.allItems[0]["gst"]}%",
            //                     style: const TextStyle(
            //                         fontSize: 14,
            //                     ),),
            //                   Text("Qty : ${Global.allItems[0]["qty"]}",
            //                     style: const TextStyle(
            //                       fontSize: 14,
            //                       // fontWeight: FontWeight.w600
            //                     ),),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //         Container(
            //           width: double.infinity,
            //           padding: const EdgeInsets.all(12),
            //           margin: const EdgeInsets.symmetric(vertical: 6),
            //           decoration: BoxDecoration(
            //               color: theme3,
            //               border: Border.all(
            //                   width: 2,
            //                   color: theme1
            //               ),
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: theme1,
            //                     offset: const Offset(5, 5)
            //                 )
            //               ]
            //           ),
            //           // child: Text("Name : ${Global.allItems[0]["name"]}")
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text(Global.allItems[1]["name"],
            //                     style: const TextStyle(
            //                         fontSize: 18,
            //                         fontWeight: FontWeight.bold
            //                     ),),
            //                   Text("₹ ${Global.allItems[1]["price"]}",
            //                     style: const TextStyle(
            //                       fontSize: 14,
            //                       // fontWeight: FontWeight.w600
            //                     ),),
            //                 ],
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text("GST : ${Global.allItems[1]["gst"]}%",
            //                     style: const TextStyle(
            //                       fontSize: 14,
            //                     ),),
            //                   Text("Qty : ${Global.allItems[1]["qty"]}",
            //                     style: const TextStyle(
            //                       fontSize: 14,
            //                       // fontWeight: FontWeight.w600
            //                     ),),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Spacer(),
            GestureDetector(
              onTap: () {

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
                child: Text('Create PDF',
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