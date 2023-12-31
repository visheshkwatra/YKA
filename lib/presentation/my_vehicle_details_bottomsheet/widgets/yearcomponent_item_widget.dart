import '../models/yearcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class YearcomponentItemWidget extends StatelessWidget {
  YearcomponentItemWidget(
    this.yearcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  YearcomponentItemModel yearcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 37.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineGray10008.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 110.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: yearcomponentItemModelObj?.yearImage,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
          SizedBox(height: 11.v),
          Text(
            yearcomponentItemModelObj.yearText!,
            style: CustomTextStyles.titleSmallBlack90005_2,
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                yearcomponentItemModelObj.yearText1!,
                style: CustomTextStyles.bodySmallOpenSans,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
