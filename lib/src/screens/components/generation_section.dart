import 'package:flutter/material.dart';

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
            Column(
              children: [
                const Text('Set output directory:'),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(2.0),
                        // minimumSize: MaterialStateProperty.all<Size>(
                        //     Size(width * .7, height * .15)),
                        // maximumSize: MaterialStateProperty.all<Size>(
                        //     Size(width * .75, height * .2))
                        ),
                    onPressed: () {},
                    child: const Text('Choose folder', style: TextStyle(overflow: TextOverflow.ellipsis),)),
              ],
            ),
            ElevatedButton.icon(
                icon: const Icon(Icons.picture_as_pdf_outlined),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(2.0),
                    // fixedSize: MaterialStateProperty.all<Size>(
                    //     Size(width * .7, height * .15))
                    ),
                onPressed: () {},
                label: const Text('Generate PDFs', style: TextStyle(overflow: TextOverflow.ellipsis))),
          ],
        ),
      ),
    );
  }
}
