import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:template/widgets/common/data_column.dart';

class AppTableRow extends StatelessWidget {
  final List<TableCellData> cells;
  final Map<int, TableColumnWidth>? columnWidths;
  final double spacing;

  const AppTableRow({
    super.key,
    required this.cells,
    this.columnWidths,
    this.spacing = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: columnWidths ??
          {
            for (int i = 0; i < cells.length; i++) i: const FlexColumnWidth(1),
          },
      defaultVerticalAlignment: TableCellVerticalAlignment.top,
      children: [
        TableRow(
          children: List.generate(
            cells.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                right: index == cells.length - 1 ? 0 : spacing.w,
              ),
              child: AppDataColumn(
                title: cells[index].title,
                label: cells[index].label,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TableCellData {
  final String title;
  final String label;

  const TableCellData({
    required this.title,
    required this.label,
  });
}
