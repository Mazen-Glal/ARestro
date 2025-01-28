import 'package:arestro/features/history/representation/views/widgets/ongoing_item.dart';
import 'package:flutter/material.dart';
class Ongoing extends StatelessWidget {
  const Ongoing({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) => OngoingItem(),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: 5,
    );
  }
}
