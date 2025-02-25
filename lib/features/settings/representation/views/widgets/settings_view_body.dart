import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/settings/representation/views/widgets/settings_item.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> texts =[
      S.of(context).about_arestro,
      S.of(context).feedback,
      S.of(context).terms_and_condition,
      S.of(context).privacy_policy,
      S.of(context).faqs,
    ];
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: DrawerWidget(),
      appBar: getDefaultAppBar(context),
      body: Column(
        spacing: 10,
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => SettingsItem(texts: texts,index: index,),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: texts.length,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
