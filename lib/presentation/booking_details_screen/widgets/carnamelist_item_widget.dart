import '../models/carnamelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class CarnamelistItemWidget extends StatelessWidget {
  CarnamelistItemWidget(
    this.carnamelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarnamelistItemModel carnamelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray10008.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 71.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: carnamelistItemModelObj?.carImage,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
          SizedBox(height: 6.v),
          Text(
            carnamelistItemModelObj.carName!,
            style: CustomTextStyles.labelLargeBlack90005,
          ),
          SizedBox(height: 3.v),
          Text(
            carnamelistItemModelObj.engineType!,
            style: CustomTextStyles.bodySmallOpenSans11,
          ),
        ],
      ),
    );
  }
}
