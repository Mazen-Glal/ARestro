
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/table_item.dart';
import 'package:flutter/material.dart';

class OpenSpace extends StatefulWidget {
  const OpenSpace({super.key});

  @override
  State<OpenSpace> createState() => _OpenSpaceState();
}

class _OpenSpaceState extends State<OpenSpace> {

  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(
        7,
            (index) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: TableItem(selectedIndex: selectedIndex,index:index,isMainRoom: false,),
        ),
      ),
    );
  }
}

