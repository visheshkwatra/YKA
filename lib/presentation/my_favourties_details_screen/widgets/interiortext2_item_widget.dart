import '../models/interiortext2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Interiortext2ItemWidget extends StatelessWidget {
  Interiortext2ItemWidget(
    this.interiortext2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Interiortext2ItemModel interiortext2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: interiortext2ItemModelObj?.interiorImage,
              height: 59.v,
              width: 76.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              interiortext2ItemModelObj.interiorText!,
              style: CustomTextStyles.labelLargeBluegray70005,
            ),
          ],
        ),
      ),
    );
  }
}
