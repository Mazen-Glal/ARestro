import 'package:arestro/core/utils/components/default_lisTile.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/constants.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/core/utils/helpers/cache_helper.dart';
import 'package:arestro/features/history/representation/views/history_view.dart';
import 'package:arestro/features/home/representation/views/home_view.dart';
import 'package:arestro/features/settings/retresentation/views/settings_view.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);
  static const List<String> languages = [
    Assets.arabic,
    Assets.english,
  ];

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      width: MediaQuery.of(context).size.width / 1.99,
      child: Container(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 40),
              child: SvgPicture.asset(
                Assets.nameLogoBlack,
                height: 56,
                // fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.house,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).home,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                GoRouter.of(context).push(HomeView.rn);
              },
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.restaurant,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).restaurants,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                GoRouter.of(context).go(HomeView.rn);
              },
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.local_pizza_sharp,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).food,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                GoRouter.of(context).push(HomeView.rn);
              },
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.dashboard,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).dashboard,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                // GoRouter.of(context).push(HelpSupportView.rn);
              },
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.history,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).history,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                GoRouter.of(context).push(HistoryView.rn);
              },
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.settings,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).settings,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                GoRouter.of(context).push(SettingsView.rn);
              },
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.notifications,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).notifications,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                // GoRouter.of(context).push(SettingView.rn);
              },
            ),
            getDefaultListTile(
              leading: const Icon(
                Icons.logout,
                size: 20,
                color: AppColors.greenBlack,
              ),
              title: Text(
                S.of(context).log_out,
                style: Styles.head16w400.copyWith(color: AppColors.greenBlack),
              ),
              onTap: () {
                // GoRouter.of(context).push(SettingView.rn);
              },
            ),
            SizedBox(height: MediaQuery.of(context).size.height/8,),
            ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                hint: Row(
                  children: [
                    Text(
                      S.of(context).languages,
                      style: TextStyle(color: AppColors.greenBlack),
                    ),
                  ],
                ),
                borderRadius: BorderRadius.circular(10),
                // value: dropdownValue,
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_downward,
                  color: AppColors.greenBlack,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                elevation: 16,
                style: TextStyle(
                  color: AppColors.greenBlack,
                ),
                underline: Container(
                  height: 2,
                  color: AppColors.greenBlack,
                ),
                onChanged: (value) async {
                  print("{$value}");
                  await CacheHelper.setData(
                          key: "language", value: value.toString())
                      .then((value) async {
                    await CacheHelper.getData(key: "language")
                        .then((value) async {
                      language = value;
                    });
                  });
                  setState((){});
                },
                items: DrawerWidget.languages
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    alignment: Alignment.center,
                    value: value,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: language == value
                            ? AppColors.green.withOpacity(0.5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5),
                        child: Row(
                          children: [
                            Image.asset(
                              value,
                              width: 30,
                              height: 30,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(value == Assets.arabic
                                ? S.of(context).arabic
                                : S.of(context).english)
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
