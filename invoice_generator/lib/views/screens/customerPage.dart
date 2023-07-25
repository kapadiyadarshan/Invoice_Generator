import 'package:flutter/material.dart';
import 'package:invoice_generator/Global/Global_class.dart';

import '../../utils/color_utils.dart';
import '../../utils/routes_utils.dart';
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

                      //CITY
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "City is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_city,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "City",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Business City",
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
                            Global.cust_city = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //State
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "State is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_state,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.streetAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "State",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Business State",
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
                            Global.cust_state = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //PIn code
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "PinCode is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.cust_pin,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "PinCode",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter City PinCode",
                          prefixIcon: const Icon(
                            Icons.pin,
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
                            Global.cust_pin = value;
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
                          else if(value.length < 10 || value.length > 10)
                          {
                            return "Phone Number Must Be Of 10 Digits...";
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

                if(validated)
                {
                  Navigator.of(context).pushNamed(MyRoute.items);
                }

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
