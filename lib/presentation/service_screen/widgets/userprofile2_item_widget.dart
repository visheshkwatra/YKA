import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillGray10006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgUserBlue70001,
            height: 27.v,
            width: 25.h,
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 48.h,
                child: Text(
                  userprofile2ItemModelObj.serviceName!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall!.copyWith(
                    height: 1.18,
                  ),
                ),
              ),
              Container(
                width: 45.h,
                margin: EdgeInsets.only(
                  left: 39.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 6.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        userprofile2ItemModelObj.plusText!,
                        style: CustomTextStyles.labelMediumRubik,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        userprofile2ItemModelObj.addText!,
                        style: CustomTextStyles.labelMediumRubik,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
