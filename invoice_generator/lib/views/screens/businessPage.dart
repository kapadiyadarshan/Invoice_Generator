import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:invoice_generator/utils/color_utils.dart';
import 'package:invoice_generator/utils/routes_utils.dart';
import 'package:invoice_generator/views/components/myBackButton.dart';

import '../../Global/Global_class.dart';

class businessPage extends StatefulWidget {
  const businessPage({Key? key}) : super(key: key);

  @override
  State<businessPage> createState() => _businessPageState();
}

class _businessPageState extends State<businessPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Business Info",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: theme2
          ),),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
      // resizeToAvoidBottomInset: false,
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
                      //Logo
                      GestureDetector(
                        onTap: () async {
                          ImagePicker pickImg = ImagePicker();
                          XFile? file;

                          file = await pickImg.pickImage(source: ImageSource.gallery);

                          if(file != null)
                          {
                            setState(() {
                              Global.image = File(file!.path);
                            });
                          }
                        },
                        child: Container(
                          height: 160,
                          width: 160,

                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                          ),
                          alignment: Alignment.center,
                          child: const Text("Add Logo",
                          style: TextStyle(
                            color: Colors.grey
                          ),),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),

                      //Name
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                            {
                              return "Business Name is required";
                            }
                          else
                            {
                              return null;
                            }
                        },
                        initialValue: Global.busi_name,
                        showCursor: true,
                        cursorColor: theme2,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: "Business Name",
                          labelStyle: TextStyle(
                              color: theme2
                          ),
                          hintText: "Enter Business Name",
                          prefixIcon: const Icon(
                            Icons.business,
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
                            Global.busi_name = value;
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
                            return "Business Address is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.busi_address,
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
                          hintText: "Enter Business Address",
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
                            Global.busi_address = value;
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
                        initialValue: Global.busi_city,
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
                            Global.busi_city = value;
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
                        initialValue: Global.busi_state,
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
                            Global.busi_state = value;
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
                        initialValue: Global.busi_pin,
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
                            Global.busi_pin = value;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      //
                      // //Email
                      // TextFormField(
                      //   validator: (value) {
                      //     if(value!.isEmpty)
                      //     {
                      //       return "Business Email is required";
                      //     }
                      //     else
                      //     {
                      //       return null;
                      //     }
                      //   },
                      //   initialValue: Global.busi_email,
                      //   showCursor: true,
                      //   cursorColor: theme2,
                      //   keyboardType: TextInputType.emailAddress,
                      //   textInputAction: TextInputAction.next,
                      //   decoration: InputDecoration(
                      //     isDense: true,
                      //     labelText: "Email",
                      //     labelStyle: TextStyle(
                      //         color: theme2
                      //     ),
                      //     hintText: "Enter Business Email",
                      //     prefixIcon: const Icon(
                      //       Icons.email,
                      //     ),
                      //     prefixIconColor: theme2,
                      //     border: const OutlineInputBorder(),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(
                      //         color: theme2,
                      //         width: 2,
                      //       ),
                      //     ),
                      //   ),
                      //   onChanged: (value) {
                      //     setState(() {
                      //       Global.busi_email = value;
                      //     });
                      //   },
                      // ),
                      // const SizedBox(
                      //   height: 12,
                      // ),

                      //Phone
                      TextFormField(
                        validator: (value) {
                          if(value!.isEmpty)
                          {
                            return "Business PhoneNumber is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.busi_phone,
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
                          hintText: "Enter Business Phone Number",
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
                            Global.busi_phone = value;
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
                            return "Business GST is required";
                          }
                          else
                          {
                            return null;
                          }
                        },
                        initialValue: Global.busi_gst,
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
                          hintText: "Enter Business GST",
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
                            Global.busi_gst = value;
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
                    Navigator.of(context).pushNamed(MyRoute.customerPage);
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
