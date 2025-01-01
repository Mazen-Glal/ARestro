import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';

class ProfileRowText extends StatelessWidget {
  const ProfileRowText({
    super.key,
    required this.text, required this.title,
  });
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Styles.head14w500.copyWith(color: AppColors.halfBlack),
          ),
          Spacer(),
          Container(
            constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2),
            child: Text(
              text,
              style: Styles.head14w500
                  .copyWith(color: AppColors.black.withOpacity(0.8)),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
