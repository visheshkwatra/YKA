import '../models/userprofile9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  Userprofile9ItemWidget(
    this.userprofile9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile9ItemModel userprofile9ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: userprofile9ItemModelObj?.homeImage,
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
                      userprofile9ItemModelObj.homeText!,
                      style: theme.textTheme.titleMedium,
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
                            style:
                                CustomTextStyles.bodyMediumGray8000114.copyWith(
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
                          userprofile9ItemModelObj.editText!,
                          style: CustomTextStyles.titleSmallPrimary_1,
                        ),
                        Spacer(
                          flex: 23,
                        ),
                        Text(
                          userprofile9ItemModelObj.deleteText!,
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
    );
  }
}
