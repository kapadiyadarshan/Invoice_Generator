import 'dart:io';

class Global
{
  static File? image;

  static String? busi_name;
  static String? busi_address;
  static String? busi_city;
  static String? busi_state;
  static String? busi_pin;
  static String? busi_email;
  static String? busi_phone;
  static String? busi_gst;

  static String? cust_name;
  static String? cust_address;
  static String? cust_city;
  static String? cust_state;
  static String? cust_pin;
  static String? cust_email;
  static String? cust_phone;
  static String? cust_gst;

  static List<Map> allItems = [];

  static double finalTotal = 0;
  static double finalGST = 0;
}
