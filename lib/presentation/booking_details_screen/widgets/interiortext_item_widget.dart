import '../models/interiortext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class InteriortextItemWidget extends StatelessWidget {
  InteriortextItemWidget(
    this.interiortextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  InteriortextItemModel interiortextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: interiortextItemModelObj?.interiorImage,
              height: 59.v,
              width: 76.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              interiortextItemModelObj.interiorText!,
              style: CustomTextStyles.labelLargeBluegray70005,
            ),
          ],
        ),
      ),
    );
  }
}
