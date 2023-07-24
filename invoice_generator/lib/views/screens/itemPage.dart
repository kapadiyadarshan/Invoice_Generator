import 'package:flutter/material.dart';

import '../../Global/Global_class.dart';
import '../../utils/color_utils.dart';
import '../../utils/routes_utils.dart';
import '../components/myBackButton.dart';

class itemPage extends StatefulWidget {
  const itemPage({Key? key}) : super(key: key);

  @override
  State<itemPage> createState() => _itemPageState();
}

class _itemPageState extends State<itemPage> {

  bool switchValue = false;
  String per_GST = "";

  Map item = {
    "name" : "",
    "price" : 0,
    "qty" : 0,
    "gst" : 0
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: theme2
          ),),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),

        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
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
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding: EdgeInsets.all(12),

                    decoration: BoxDecoration(
                      color: theme2
                    ),
                    // alignment: Alignment.center,
                    child: Text("Item 1",
                    style: TextStyle(
                      color: theme3,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Item Name
                  TextFormField(
                    // initialValue: Global.cust_name,
                    showCursor: true,
                    cursorColor: theme2,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Item Name",
                      labelStyle: TextStyle(
                          color: theme2
                      ),
                      hintText: "Enter Item Name",
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme2,
                          width: 2,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        item["name"] = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Item Price
                  TextFormField(
                    // initialValue: Global.cust_name,
                    showCursor: true,
                    cursorColor: theme2,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Price",
                      labelStyle: TextStyle(
                          color: theme2
                      ),
                      hintText: "Enter Price",
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme2,
                          width: 2,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        item["price"] = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //Item Qty
                  TextFormField(
                    // initialValue: Global.cust_name,
                    showCursor: true,
                    cursorColor: theme2,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Quantity",
                      labelStyle: TextStyle(
                          color: theme2
                      ),
                      hintText: "Enter Quantity",
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme2,
                          width: 2,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        item["qty"] = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  //GST
                  TextFormField(
                    // initialValue: Global.cust_name,
                    showCursor: true,
                    cursorColor: theme2,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "GST",
                      labelStyle: TextStyle(
                          color: theme2
                      ),
                      hintText: "Enter GST",
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme2,
                          width: 2,
                        ),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        item["gst"] = value;
                      });
                    },
                  ),
                  // Container(
                  //   height: 60,
                  //   width: double.infinity,
                  //   padding: EdgeInsets.all(12),
                  //
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text("Include GST",
                  //       style: TextStyle(
                  //         color: theme2,
                  //         fontSize: 18
                  //       ),),
                  //       Switch(
                  //         activeColor: theme2,
                  //         activeTrackColor: theme1,
                  //         value: switchValue,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             switchValue = value;
                  //           }
                  //           );
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   height: 60,
                  //   width: double.infinity,
                  //   padding: EdgeInsets.all(12),
                  //
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       RadioListTile(
                  //         title: Text("5%",
                  //         style: TextStyle(
                  //           fontSize: 18
                  //         ),),
                  //         value: "5",
                  //         groupValue: per_GST,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             per_GST = value!;
                  //           });
                  //         }
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {

                Navigator.of(context).pushNamed(MyRoute.items);

                Global.allItems.add(item);

                print(Global.allItems);
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
                child: Text('Save',
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
