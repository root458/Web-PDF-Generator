import 'package:flutter/material.dart';

class DisplayDataTable extends StatelessWidget {
  const DisplayDataTable({Key? key, required this.height, required this.width, }) : super(key: key);
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: height,
        width: width,
        child: Scrollbar(
          interactive: true,
          isAlwaysShown: true,
          child: ListView(children: [
            Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FractionColumnWidth(0.1),
                1: FractionColumnWidth(0.35),
                2: FractionColumnWidth(0.35),
                3: FractionColumnWidth(0.2),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              children: [
                _buildRow(['#', 'First Name', 'Second Name', 'ID Number'],
                    isHeader: true),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
                _buildRow(['1', 'John', 'Weke', '3335698']),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  TableRow _buildRow(List<String> listOfStrings, {bool isHeader = false}) {
    TextStyle _textStyle =
        TextStyle(fontWeight: isHeader ? FontWeight.bold : FontWeight.normal);

    return TableRow(
        children: listOfStrings.map((string) {
      return TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            string,
            style: _textStyle,
          )),
        ),
      );
    }).toList());
  }
}
