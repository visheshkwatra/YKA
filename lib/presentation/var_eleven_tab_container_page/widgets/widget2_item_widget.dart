import '../models/widget2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Widget2ItemWidget extends StatelessWidget {
  Widget2ItemWidget(
    this.widget2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Widget2ItemModel widget2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: 90.adaptSize,
          width: 90.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 23.v,
          ),
          decoration: AppDecoration.gradientRedToRed100.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: CustomImageView(
            imagePath: widget2ItemModelObj?.image,
            height: 43.v,
            width: 51.h,
            alignment: Alignment.centerLeft,
          ),
        ),
      ),
    );
  }
}
