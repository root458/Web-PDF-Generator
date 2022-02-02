import 'package:flutter/material.dart';
import 'package:web_pdf_generator/src/services/generate_pdf.dart';

class PDFGenerationSection extends StatelessWidget {
  const PDFGenerationSection(
      {Key? key, required this.height, required this.width})
      : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
                icon: const Icon(Icons.picture_as_pdf_outlined),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(2.0),
                ),
                onPressed: () {
                  // Generate PDF
                  GeneratePDF.generatePDF(['Witt', 'Koyo', '37719961']);
                },
                label: const Text('Generate PDFs',
                    style: TextStyle(overflow: TextOverflow.ellipsis))),
          ],
        ),
      ),
    );
  }
}
