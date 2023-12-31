import '../models/viewhierarchy1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

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
            height: 54.v,
            width: 60.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 3.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 7.v,
                    width: 39.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: viewhierarchy1ItemModelObj?.image1,
                          height: 7.v,
                          width: 39.h,
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: viewhierarchy1ItemModelObj?.image2,
                          height: 7.v,
                          width: 39.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: viewhierarchy1ItemModelObj?.image3,
                  height: 54.v,
                  width: 60.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 54.h,
                    child: Text(
                      viewhierarchy1ItemModelObj.text1!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelMedium!.copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                CustomOutlinedButton(
                  height: 24.v,
                  width: 50.h,
                  text: "lbl_add".tr,
                  buttonTextStyle: CustomTextStyles.labelMediumRed800,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
