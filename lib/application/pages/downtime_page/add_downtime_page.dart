import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../infrastructure/const/custom_text.dart';
import '../../widget/custom_app_bar/custom_app_bar.dart';

@RoutePage()
class AddDowntimePage extends StatelessWidget {
  const AddDowntimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double columnWidth = screenWidth / 5;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Downtime",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Table(
                columnWidths: {
                  0: FixedColumnWidth(columnWidth),
                  1: FixedColumnWidth(columnWidth),
                  2: FixedColumnWidth(columnWidth),
                  3: FixedColumnWidth(columnWidth),
                  4: FixedColumnWidth(columnWidth),
                  5: FixedColumnWidth(columnWidth),
                  6: FixedColumnWidth(columnWidth),
                  7: FixedColumnWidth(columnWidth),
                },
                children: [
                  TableRow(
                    children: [
                      tableHeader('Issue Created Time'),
                      tableHeader('Category'),
                      tableHeader('Machine/ Module'),
                      tableHeader('Issue'),
                      tableHeader('Time'),
                      tableHeader('Status'),
                      tableHeader('Action'),
                    ],
                  ),
                  // Table row 1
                  TableRow(

                    children: [
                      tableCell('Row 1, Col 1'),
                      tableCell('Row 1, Col 2'),
                      tableCell('Row 1, Col 3'),
                      tableCell('Row 1, Col 4'),
                      tableCell('Row 1, Col 5'),
                      tableCell('Row 1, Col 6'),
                      tableCell('Row 1, Col 7'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget tableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomText().dynamicTxt(txt: text, color: Colors.blue, fontSize: 18)
    );
  }

  Widget tableCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: CustomText().dynamicTxt(txt: text, color: Colors.black38, fontSize: 15)
    );
  }
}
