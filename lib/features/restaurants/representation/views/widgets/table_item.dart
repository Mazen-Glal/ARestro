import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:flutter/material.dart';
class TableItem extends StatelessWidget {
  const TableItem({
    super.key,
    required this.selectedIndex, required this.index, required this.isMainRoom,
  });

  final int? selectedIndex;

  final int index;
  final bool isMainRoom;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity:selectedIndex==index?1.0: 0.4,
          child: Image.asset(selectedIndex == null ? Assets.unreservedTable: selectedIndex==index? Assets.reservedTable:Assets.unreservedTable),
        ),
        Text(
          "${index +( isMainRoom?1:10)}",
          style: TextStyle(
              color: selectedIndex==index?AppColors.white: AppColors.greenBlack
          ),
        )
      ],
    );
  }
}
