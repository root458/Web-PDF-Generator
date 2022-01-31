import 'package:flutter/material.dart';
import 'package:web_pdf_generator/src/screens/components/data_table.dart';
import 'package:web_pdf_generator/src/screens/components/generation_section.dart';
import 'package:web_pdf_generator/src/screens/components/title_section.dart';

class TwoColumnLayout extends StatelessWidget {
  const TwoColumnLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: _size.width,
            height: _size.height * .2,
            child: TitleSection(
              size: _size,
            ),
          ),
          SizedBox(
            width: _size.width,
            height: _size.height * .8,
            child: Row(
              children: [
                Flexible(
                    flex: 7,
                    child: DisplayDataTable(
                      height: _size.height * .8 * .8,
                      width: _size.width * .7 * .8,
                    )),
                const VerticalDivider(
                  thickness: 2,
                ),
                Flexible(
                    flex: 3,
                    child: PDFGenerationSection(
                      height: _size.height * .8 * .5,
                      width: _size.width * .3 * .7,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
