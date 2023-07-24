import 'package:flutter/material.dart';
import 'package:invoice_generator/Global/Global_class.dart';

import '../../utils/color_utils.dart';
import '../components/myBackButton.dart';

class customerPage extends StatefulWidget {
  const customerPage({Key? key}) : super(key: key);

  @override
  State<customerPage> createState() => _customerPageState();
}

class _customerPageState extends State<customerPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customer Info",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: theme2
        ),),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12),
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      //Name
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Customer Name is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_name,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "Customer Name",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Customer Name",
                          prefixIcon: const Icon(
                            Icons.person,
                          ),
                          prefixIconColor: theme2,
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
                            Global.cust_name = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Address
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Customer Address is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_address,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "Address",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Customer Address",
                          prefixIcon: const Icon(
                            Icons.location_on,
                          ),
                          prefixIconColor: theme2,
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
                            Global.cust_address = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Email
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Customer Email is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_email,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "Email",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Customer Email",
                          prefixIcon: const Icon(
                            Icons.email,
                          ),
                          prefixIconColor: theme2,
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
                            Global.cust_email = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Phone
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Customer PhoneNumber is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_phone,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "Phone",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Customer Phone Number",
                          prefixIcon: const Icon(
                            Icons.phone,
                          ),
                          prefixIconColor: theme2,
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
                            Global.cust_phone = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //GST No.
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Customer GST is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_gst,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "GST No.",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Customer GST",
                          prefixIcon: const Icon(
                            Icons.money,
                          ),
                          prefixIconColor: theme2,
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
                            Global.cust_gst = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                bool validated = formKey.currentState!.validate();

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
                child: Text('Next',
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
