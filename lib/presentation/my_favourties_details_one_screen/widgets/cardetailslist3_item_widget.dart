import '../models/cardetailslist3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Cardetailslist3ItemWidget extends StatelessWidget {
  Cardetailslist3ItemWidget(
    this.cardetailslist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Cardetailslist3ItemModel cardetailslist3ItemModelObj;

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
            imagePath: cardetailslist3ItemModelObj?.carImage,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
          SizedBox(height: 6.v),
          Text(
            cardetailslist3ItemModelObj.carName!,
            style: CustomTextStyles.labelLargeBlack90005,
          ),
          SizedBox(height: 3.v),
          Text(
            cardetailslist3ItemModelObj.engineType!,
            style: CustomTextStyles.bodySmallOpenSans11,
          ),
        ],
      ),
    );
  }
}
