import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_item.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_submit_card.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_view_body_item.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class OrderDetailsViewBody extends StatefulWidget {
   OrderDetailsViewBody({super.key});

  @override
  State<OrderDetailsViewBody> createState() => _OrderDetailsViewBodyState();
}

class _OrderDetailsViewBodyState extends State<OrderDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      backgroundColor: AppColors.white.withOpacity(0.98),
      appBar: getDefaultAppBar(context),
      body: OrderDetailsViewBodyItem(),
    );
  }
}
