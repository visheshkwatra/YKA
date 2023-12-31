import '../models/interiortext1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Interiortext1ItemWidget extends StatelessWidget {
  Interiortext1ItemWidget(
    this.interiortext1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Interiortext1ItemModel interiortext1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 8.v),
        child: Column(
          children: [
            CustomImageView(
              imagePath: interiortext1ItemModelObj?.interiorImage,
              height: 59.v,
              width: 76.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              interiortext1ItemModelObj.interiorText!,
              style: CustomTextStyles.labelLargeBluegray70005,
            ),
          ],
        ),
      ),
    );
  }
}
