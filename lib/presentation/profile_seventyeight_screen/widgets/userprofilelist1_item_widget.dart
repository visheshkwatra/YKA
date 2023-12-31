import '../models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 41.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 43.v,
          width: 41.h,
          margin: EdgeInsets.only(bottom: 82.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: userprofilelist1ItemModelObj?.userImage,
                height: 43.v,
                width: 41.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 41.v,
                  width: 37.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: userprofilelist1ItemModelObj?.userImage1,
                        height: 41.v,
                        width: 37.h,
                        radius: BorderRadius.only(
                          topLeft: Radius.circular(12.h),
                          bottomRight: Radius.circular(16.h),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            right: 5.h,
                            bottom: 5.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_bhd".tr,
                                      style: CustomTextStyles.labelSmall8_1,
                                    ),
                                    TextSpan(
                                      text: "lbl_52".tr,
                                      style: CustomTextStyles
                                          .labelMediumWhiteA700_1,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 2.v),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text(
                                  userprofilelist1ItemModelObj.userStatus!,
                                  style: theme.textTheme.labelSmall,
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
            ],
          ),
        ),
      ),
    );
  }
}
