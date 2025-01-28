import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/main_room.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/open_space.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';

class SelectTableItem extends StatefulWidget {
  const SelectTableItem({
    super.key,
  });

  @override
  State<SelectTableItem> createState() => _SelectTableItemState();
}

class _SelectTableItemState extends State<SelectTableItem> {
  List<Widget> widgets = [
    MainRoom(),
    OpenSpace(),
  ];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FlutterToggleTab(
          unSelectedBackgroundColors: [
            Colors.transparent,
            Colors.transparent,
          ],
          borderRadius: 30,
          height: 35,
          selectedIndex: selectedIndex,
          selectedBackgroundColors: [AppColors.green, AppColors.green],
          selectedTextStyle: Styles.head12w500.copyWith(color:AppColors.white),
          unSelectedTextStyle: Styles.head12w500.copyWith(color:AppColors.greenBlack),
          begin: Alignment.center,
          end: Alignment.centerLeft,
          isShadowEnable: false,
          marginSelected: EdgeInsets.zero,
          isInnerShadowEnable: false,
          isScroll: true,
          width: MediaQuery.of(context).size.width/5,
          dataTabs: [
            DataTab(
              title: S.of(context).main_room,
            ),
            DataTab(
              title: S.of(context).open_space,
            ),
          ],
          selectedLabelIndex: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        widgets[selectedIndex],
      ],
    );
  }
}
