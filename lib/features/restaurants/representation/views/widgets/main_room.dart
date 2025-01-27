import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/table_item.dart';
import 'package:flutter/material.dart';

class MainRoom extends StatefulWidget {
  const MainRoom({super.key});

  @override
  State<MainRoom> createState() => _MainRoomState();
}

class _MainRoomState extends State<MainRoom> {

   int? selectedIndex ;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(
        9,
        (index) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: TableItem(selectedIndex: selectedIndex,index:index,isMainRoom: true,),
        ),
      ),
    );
  }
}
