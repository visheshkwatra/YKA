import '../models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          Container(
            height: 56.v,
            width: 58.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5.v,
                          width: 37.h,
                          margin: EdgeInsets.only(top: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.black90005,
                            borderRadius: BorderRadius.circular(
                              18.h,
                            ),
                          ),
                        ),
                        Container(
                          height: 5.v,
                          width: 14.h,
                          margin: EdgeInsets.only(bottom: 2.v),
                          decoration: BoxDecoration(
                            color: appTheme.black90005,
                            borderRadius: BorderRadius.circular(
                              7.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: userprofile5ItemModelObj?.miscServicesImage,
                  height: 56.v,
                  width: 58.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 45.h,
                  child: Text(
                    userprofile5ItemModelObj.miscServicesText!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelMedium!.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                CustomOutlinedButton(
                  height: 24.v,
                  width: 57.h,
                  text: "lbl_added".tr,
                  buttonStyle: CustomButtonStyles.outlineRedTL61,
                  buttonTextStyle: CustomTextStyles.labelMediumWhiteA700_2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
