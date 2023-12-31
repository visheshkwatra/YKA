import 'bloc/profile_eightytwo_bloc.dart';
import 'models/profile_eightytwo_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileEightytwoDialog extends StatelessWidget {
  const ProfileEightytwoDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightytwoBloc>(
      create: (context) => ProfileEightytwoBloc(ProfileEightytwoState(
        profileEightytwoModelObj: ProfileEightytwoModel(),
      ))
        ..add(ProfileEightytwoInitialEvent()),
      child: ProfileEightytwoDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      child: Column(
        children: [
          Spacer(),
          _buildProfileFrame(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 31.v),
      decoration: AppDecoration.gradientGrayToTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 166.v,
            width: 345.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBackgroundComplete,
                  height: 153.v,
                  width: 345.h,
                  alignment: Alignment.topCenter,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinRed800,
                  height: 96.v,
                  width: 80.h,
                  alignment: Alignment.bottomCenter,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_allow_location".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          SizedBox(
            width: 234.h,
            child: Text(
              "msg_yka_needs_your_location".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumGray70003.copyWith(
                height: 1.56,
              ),
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomOutlinedButton(
                  height: 52.v,
                  width: 103.h,
                  text: "lbl_later".tr,
                  buttonStyle: CustomButtonStyles.outlineGrayTL14,
                ),
                CustomElevatedButton(
                  height: 52.v,
                  width: 188.h,
                  text: "lbl_enable_location".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700Bold_1,
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
