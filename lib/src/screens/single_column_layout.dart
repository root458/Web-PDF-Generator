import 'package:flutter/material.dart';
import 'package:web_pdf_generator/src/screens/components/title_section.dart';

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
            child: const Center(
              child: Text('Body'),
            ),
          ),
        ],
      ),
    );
  }
}
