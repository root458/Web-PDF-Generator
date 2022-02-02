import 'dart:convert';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class GeneratePDF {
  static void generatePDF(List details) async {
    final pw.Document _pdf = pw.Document();

    final font = await rootBundle.load("assets/fonts/Euclid.ttf");
    final ttf = pw.Font.ttf(font);

    _pdf.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        build: (pw.Context context) {
          return pw.Center(
              child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                pw.Text(details[0],
                    style: pw.TextStyle(font: ttf, fontSize: 20)),
                pw.Text(details[1],
                    style: pw.TextStyle(font: ttf, fontSize: 20)),
                pw.Text(details[2],
                    style: pw.TextStyle(font: ttf, fontSize: 20)),
              ]));
        }));

    // Save pdf
    AnchorElement(
        href:
            "data:application/octet-stream;charset=utf-16le;base64,${base64.encode((await _pdf.save()))}")
      ..setAttribute("download", "${details[2]}.pdf")
      ..click();
  }
}
