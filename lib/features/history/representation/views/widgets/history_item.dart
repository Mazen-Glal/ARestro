
import 'package:arestro/features/history/representation/views/widgets/ongoing_and_history_item.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(10),
      child: OngoingAndHistoryItem(
        title: "Chicken Station",
        itemsCount: 03,
        subTitle: "Rs. 350",
        onTap2Text: S.of(context).review,
        onTap1Text: S.of(context).reOrder,
        onTap1: () {},
        onTap2: () {},
      ),
    );
  }
}

