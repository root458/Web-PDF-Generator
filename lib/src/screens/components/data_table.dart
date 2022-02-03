import 'package:flutter/material.dart';
import 'package:web_pdf_generator/src/services/database_service.dart';

class DisplayDataTable extends StatelessWidget {
  const DisplayDataTable({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
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
            FutureBuilder<List<List>>(
                initialData: const [
                  ['0', 'First Name', 'Second Name', '00000000']
                ],
                future: DatabaseService.getData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    // Get the data
                    List<List>? _customers = snapshot.data;

                    return Table(
                      border: TableBorder.all(),
                      columnWidths: const {
                        0: FractionColumnWidth(0.1),
                        1: FractionColumnWidth(0.35),
                        2: FractionColumnWidth(0.35),
                        3: FractionColumnWidth(0.2),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      children: _buildTableRecords(_customers!),
                    );
                  } else {
                    return Table(
                      border: TableBorder.all(),
                      columnWidths: const {
                        0: FractionColumnWidth(0.1),
                        1: FractionColumnWidth(0.35),
                        2: FractionColumnWidth(0.35),
                        3: FractionColumnWidth(0.2),
                      },
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      children: _buildTableRecords([
                        ['1', '', '', '']
                      ]),
                    );
                  }
                }),
          ]),
        ),
      ),
    );
  }

  List<TableRow> _buildTableRecords(List customers) {
    customers.insert(0, ['#', 'First Name', 'Second Name', 'ID Number']);
    return customers.map((customerDetails) {
      if (customerDetails[0] == '#') {
        return _buildRow(customerDetails, isHeader: true);
      } else {
        return _buildRow(customerDetails);
      }
    }).toList();
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
