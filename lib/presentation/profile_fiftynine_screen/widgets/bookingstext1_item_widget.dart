import '../models/bookingstext1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Bookingstext1ItemWidget extends StatelessWidget {
  Bookingstext1ItemWidget(
    this.bookingstext1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Bookingstext1ItemModel bookingstext1ItemModelObj;

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
            imagePath: bookingstext1ItemModelObj?.bookingsImage,
            height: 26.adaptSize,
            width: 26.adaptSize,
          ),
          SizedBox(height: 18.v),
          Text(
            bookingstext1ItemModelObj.bookingsText!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
