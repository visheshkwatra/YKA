import '../models/yearcomponent1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Yearcomponent1ItemWidget extends StatelessWidget {
  Yearcomponent1ItemWidget(
    this.yearcomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Yearcomponent1ItemModel yearcomponent1ItemModelObj;

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
            imagePath: yearcomponent1ItemModelObj?.yearImage,
            height: 22.adaptSize,
            width: 22.adaptSize,
          ),
          SizedBox(height: 11.v),
          Text(
            yearcomponent1ItemModelObj.yearText!,
            style: CustomTextStyles.titleSmallBlack90005_2,
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                yearcomponent1ItemModelObj.yearLabel!,
                style: CustomTextStyles.bodySmallOpenSans,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
