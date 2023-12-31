import '../models/bookingstext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class BookingstextItemWidget extends StatelessWidget {
  BookingstextItemWidget(
    this.bookingstextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BookingstextItemModel bookingstextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: bookingstextItemModelObj?.bookingsImage,
            height: 26.adaptSize,
            width: 26.adaptSize,
          ),
          SizedBox(height: 18.v),
          Text(
            bookingstextItemModelObj.bookingsText!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
