import '../models/userprofilelist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(
    this.userprofilelist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist2ItemModel userprofilelist2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.96, -0.74),
          end: Alignment(0.06, 1.81),
          colors: [
            appTheme.red80002,
            appTheme.red80002.withOpacity(0),
            appTheme.red80002,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 15.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: userprofilelist2ItemModelObj?.homeImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 18.v,
                  bottom: 59.v,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    top: 1.v,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          userprofilelist2ItemModelObj.homeText!,
                          style: CustomTextStyles.titleMediumRed800_1,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Container(
                        width: 259.h,
                        margin: EdgeInsets.only(right: 8.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_104_1st_floo".tr,
                                style: CustomTextStyles.bodyMediumGray8000114_1,
                              ),
                              TextSpan(
                                text: "msg_r_j_tower_golf".tr,
                                style: CustomTextStyles.bodyMediumGray8000114
                                    .copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      SizedBox(
                        width: 267.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              userprofilelist2ItemModelObj.editText!,
                              style: CustomTextStyles.titleSmallPrimary_1,
                            ),
                            Spacer(
                              flex: 23,
                            ),
                            Text(
                              userprofilelist2ItemModelObj.deleteText!,
                              style: CustomTextStyles.titleSmallGray60004,
                            ),
                            Spacer(
                              flex: 76,
                            ),
                            CustomElevatedButton(
                              height: 21.v,
                              width: 63.h,
                              text: "lbl_default".tr,
                              buttonStyle: CustomButtonStyles.fillTeal,
                              buttonTextStyle:
                                  CustomTextStyles.labelMediumTeal70001,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
