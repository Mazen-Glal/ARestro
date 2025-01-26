import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class RestaurantLocationDetails extends StatelessWidget {
  const RestaurantLocationDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        Icons.location_on,
        color: AppColors.green,
      ),
      Text(
        "100 ${S.of(context).km_from_location}",
        style: Styles.head12w500.copyWith(color: Colors.grey.withOpacity(0.7)),
      ),
      Spacer(),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          visualDensity: VisualDensity.compact,
          padding: WidgetStatePropertyAll(EdgeInsets.zero),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          S.of(context).view_on_google_map,
          style: Styles.head12w500.copyWith(color: Colors.blue),
        ),
      ),
    ]);
  }
}

