import 'package:flutter/material.dart';
import 'package:invoice_generator/views/components/myBackButton.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../Global/Global_class.dart';
import '../../utils/color_utils.dart';

class PDFpage extends StatefulWidget {
  const PDFpage({Key? key}) : super(key: key);

  @override
  State<PDFpage> createState() => _PDFpageState();
}

class _PDFpageState extends State<PDFpage> {

  generatePDF()
  {
    pw.Document pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        margin: const pw.EdgeInsets.all(12),
        build: (pw.Context context) => pw.Column(
          children: [
            pw.Row(
              children: [
                pw.Container(
                    height: 100,
                    width: 250,
                    child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(Global.busi_name!,
                              style: pw.TextStyle(
                                  fontSize: 16,
                                  fontWeight: pw.FontWeight.bold
                              )),
                          pw.Text(Global.busi_address!,
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),),
                          pw.Text("${Global.busi_city},",
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),),
                          pw.Text("${Global.busi_state},",
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),),
                          pw.Text("${Global.busi_pin}",
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),),
                          pw.Text("GSTIN ${Global.busi_gst}",
                            style: const pw.TextStyle(
                              fontSize: 10,
                            ),),
                        ]
                    )
                ),
                pw.Spacer(),
                pw.Container(
                    height: 100,
                    alignment: pw.Alignment.topCenter,
                    child: pw.Text("Tax Invoice",
                    style: pw.TextStyle(
                      fontSize: 32,
                      fontWeight: pw.FontWeight.bold
                    ))
                ),
              ]
            ),
            pw.Row(
                children: [
                  pw.Container(
                      height: 100,
                      width: 250,
                      child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text("Bill To",
                                style: pw.TextStyle(
                                    fontSize: 18,
                                    fontWeight: pw.FontWeight.bold
                                )),
                            pw.Text(Global.cust_name!,
                                style: const pw.TextStyle(
                                    fontSize: 16,
                                )),
                            pw.Text(Global.cust_address!,
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),),
                            pw.Text("${Global.cust_city},",
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),),
                            pw.Text("${Global.cust_state},",
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),),
                            pw.Text("${Global.cust_pin}",
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),),
                            pw.Text("GSTIN ${Global.cust_gst}",
                              style: const pw.TextStyle(
                                fontSize: 10,
                              ),),
                          ]
                      )
                  ),
                  pw.SizedBox(
                    width: 160
                  ),
                  pw.Container(
                      height: 100,
                      alignment: pw.Alignment.topLeft,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.RichText(
                            text: pw.TextSpan(
                              children: [
                                pw.TextSpan(
                                  text: "Invoice Number  ",
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold
                                  )
                                ),
                                const pw.TextSpan(
                                  text: "INV-0001"
                                ),
                              ]
                            )
                          ),
                          pw.SizedBox(
                            height: 10
                          ),

                          pw.RichText(
                              text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(
                                        text: "Invoice Date\t\t\t\t\t\t\t",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold
                                        )
                                    ),
                                    const pw.TextSpan(
                                        text: "24 Jul 2023"
                                    ),
                                  ]
                              )
                          ),
                          pw.SizedBox(
                              height: 10
                          ),

                          pw.RichText(
                              text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(
                                        text: "Due Date\t\t\t\t\t\t\t\t\t\t\t\t",
                                        style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold
                                        )
                                    ),
                                    const pw.TextSpan(
                                        text: "31 Jul 2023"
                                    ),
                                  ]
                              )
                          ),
                          pw.SizedBox(
                              height: 10
                          ),
                        ]
                      )
                  ),
                ]
            ),
            pw.SizedBox(
              height: 12
            ),
            pw.Container(
              color: PdfColors.grey400,
              child: pw.Row(
                  children: [
                    //Item name
                    pw.Container(
                      // width: 160/4072/4630,
                        width: 160,
                        padding: pw.EdgeInsets.all(4),
                        color: PdfColors.grey400,
                        child: pw.Text("Item Name")
                    ),
                    pw.Spacer(),
                    //Qty
                    pw.Container(
                        width: 60,
                        padding: pw.EdgeInsets.all(4),
                        alignment: pw.Alignment.center,
                        color: PdfColors.grey400,
                        child: pw.Text("Quantity")
                    ),
                    pw.Spacer(),
                    //Rate
                    pw.Container(
                        width: 40,
                        padding: pw.EdgeInsets.all(4),
                        color: PdfColors.grey400,
                        alignment: pw.Alignment.center,
                        child: pw.Text("Rate")
                    ),
                    pw.Spacer(),
                    //sgst
                    pw.Container(
                        width: 70,
                        padding: pw.EdgeInsets.all(4),
                        color: PdfColors.grey400,
                        alignment: pw.Alignment.center,
                        child: pw.Text("SGST")
                    ),
                    pw.Spacer(),
                    //CGST
                    pw.Container(
                        width: 70,
                        padding: pw.EdgeInsets.all(4),
                        color: PdfColors.grey400,
                        alignment: pw.Alignment.center,
                        child: pw.Text("CGST")
                    ),
                    pw.Spacer(),
                    //Amount
                    pw.Container(
                        width: 60,
                        padding: pw.EdgeInsets.all(4),
                        alignment: pw.Alignment.centerRight,
                        color: PdfColors.grey400,
                        child: pw.Text("Amount")
                    ),
                  ]
              ),
            ),
            ...List.generate(Global.allItems.length, (index) => pw.Column(
              children: [
                pw.Row(
                    children: [
                      //Item name
                      pw.Container(
                        // width: 160/4072/4630,
                          width: 160,
                          padding: pw.EdgeInsets.all(4),
                          child: pw.Text("${Global.allItems[index]["name"]}")
                      ),
                      pw.Spacer(),
                      //Qty
                      pw.Container(
                          width: 60,
                          padding: pw.EdgeInsets.all(4),
                          alignment: pw.Alignment.center,
                          child: pw.Text("${Global.allItems[index]["qty"]}")
                      ),
                      pw.Spacer(),
                      //Rate
                      pw.Container(
                          width: 40,
                          padding: pw.EdgeInsets.all(4),
                          alignment: pw.Alignment.center,
                          child: pw.Text("${Global.allItems[index]["price"]}")
                      ),
                      pw.Spacer(),
                      //sgst
                      pw.Container(
                          width: 70,
                          padding: pw.EdgeInsets.all(4),
                          alignment: pw.Alignment.center,
                          child: pw.Text("${Global.allItems[index]["Sgst"]}\n(${Global.allItems[index]["gst"]/2}%)")
                      ),
                      pw.Spacer(),
                      //CGST
                      pw.Container(
                          width: 70,
                          padding: pw.EdgeInsets.all(4),
                          alignment: pw.Alignment.center,
                          child: pw.Text("${Global.allItems[index]["Cgst"]}\n(${Global.allItems[index]["gst"]/2}%)")
                      ),
                      pw.Spacer(),
                      //Amount
                      pw.Container(
                          width: 60,
                          padding: pw.EdgeInsets.all(4),
                          alignment: pw.Alignment.centerRight,
                          child: pw.Text("${Global.allItems[index]["total"]}")
                      ),
                    ]
                ),
                pw.Divider()
              ],
            ),
            ),
            pw.Row(
              children: [
                pw.SizedBox(
                  width: 300
                ),
                pw.Text("Total ${Global.finalTotal}")
              ]
            ),
            pw.Row(
                children: [
                  pw.SizedBox(
                      width: 300
                  ),
                  pw.Text("Total ${Global.finalGST}")
                ]
            ),
          ]
        )
      )
    );

    return pdf.save();
  }

  @override
  void initState() {

    Global.finalGST = 0;
    Global.finalTotal = 0;

    List.generate(Global.allItems.length, (index) {
      Global.finalTotal = (Global.finalTotal + Global.allItems[index]["total"])as double;
    });

    List.generate(Global.allItems.length, (index) {
      Global.finalGST = (Global.finalGST + Global.allItems[index]["gst_value"])as double;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Page",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: theme2
          ),),
        centerTitle: true,
        leading: const MyBackButton(),
      ),
      body: PdfPreview(
        build: (format) => generatePDF(),
      ),
    );
  }
}
