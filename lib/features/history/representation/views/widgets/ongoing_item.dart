
import 'package:arestro/features/history/representation/views/widgets/ongoing_and_history_item.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class OngoingItem extends StatelessWidget {
  const OngoingItem({super.key});

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
        onTap1Text: S.of(context).track_order,
        onTap2Text: S.of(context).cancel,
        onTap1: () {},
        onTap2: () {},
      ),
    );
  }
}

