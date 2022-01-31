import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: SizedBox(
          height: size.height * 0.2 * 0.7,
          width: size.width * 0.5,
          child: const FittedBox(
            child: Text(
              'Generate PDFs with ease',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
