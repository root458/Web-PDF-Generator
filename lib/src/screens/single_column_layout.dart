import 'package:flutter/material.dart';
import 'package:web_pdf_generator/src/screens/components/title_section.dart';

import 'components/data_table.dart';
import 'components/generation_section.dart';

class SingleColumnLayout extends StatelessWidget {
  const SingleColumnLayout({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                Flexible(
                    flex: 3,
                    child: PDFGenerationSection(
                      height: _size.height * .8 * .3,
                      width: _size.width * .7,
                    )),
                const Divider(
                  thickness: 2,
                ),
                Flexible(
                    flex: 7,
                    child: DisplayDataTable(
                      height: _size.height * .8 * .7,
                      width: _size.width * .8,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
