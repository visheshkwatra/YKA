import '../models/view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class ViewItemWidget extends StatelessWidget {
  ViewItemWidget(
    this.viewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewItemModel viewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 134.v,
        width: 327.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 134.v,
                width: 327.h,
                decoration: BoxDecoration(
                  color: appTheme.gray10006,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup1171275016,
              height: 70.adaptSize,
              width: 70.adaptSize,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 19.v),
            ),
          ],
        ),
      ),
    );
  }
}
