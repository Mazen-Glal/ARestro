import 'package:arestro/features/history/representation/views/widgets/history_item.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => HistoryItem(),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: 5,
    );
  }
}
