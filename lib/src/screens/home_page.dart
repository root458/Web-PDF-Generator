import 'package:flutter/material.dart';
import 'package:web_pdf_generator/src/screens/single_column_layout.dart';
import 'package:web_pdf_generator/src/screens/two_column_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      if (boxConstraints.maxWidth > 600) {
        return const TwoColumnLayout();
      } else {
        return const SingleColumnLayout();
      }
    });
  }
}
