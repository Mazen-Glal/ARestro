import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/features/history/representation/views/widgets/history.dart';
import 'package:arestro/features/history/representation/views/widgets/ongoing.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class HistoryViewBody extends StatefulWidget {
  const HistoryViewBody({super.key});

  @override
  State<HistoryViewBody> createState() => _HistoryViewBodyState();
}

class _HistoryViewBodyState extends State<HistoryViewBody>
    with SingleTickerProviderStateMixin {
  final List<Widget> widgets = [Ongoing(), History()];
  int selectedIndex = 1;
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tabs = [
      Tab(
        text: S.of(context).ongoing,
      ),
      Tab(
        text: S.of(context).history,
      )
    ];
    return Scaffold(
      appBar: getDefaultAppBar(context),
      backgroundColor: AppColors.white.withOpacity(0.95),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            TabBar(
              controller: tabController,
              tabs: tabs,
              labelColor: AppColors.green,
              indicatorColor: AppColors.green,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
              unselectedLabelColor: Colors.grey,
              physics: BouncingScrollPhysics(),
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              dividerColor: Colors.transparent,
            ),
            Expanded(child: widgets[selectedIndex]),
          ],
        ),
      ),
    );
  }
}
