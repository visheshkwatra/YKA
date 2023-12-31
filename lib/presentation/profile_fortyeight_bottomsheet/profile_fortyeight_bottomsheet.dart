import 'bloc/profile_fortyeight_bloc.dart';
import 'models/profile_fortyeight_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileFortyeightBottomsheet extends StatelessWidget {
  const ProfileFortyeightBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFortyeightBloc>(
      create: (context) => ProfileFortyeightBloc(ProfileFortyeightState(
        profileFortyeightModelObj: ProfileFortyeightModel(),
      ))
        ..add(ProfileFortyeightInitialEvent()),
      child: ProfileFortyeightBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 36.v,
      ),
      decoration: AppDecoration.gradientGrayToTeal.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL401,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 179.v),
          Text(
            "msg_enable_biometric".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 5.v),
          Container(
            width: 269.h,
            margin: EdgeInsets.only(
              left: 43.h,
              right: 42.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_login_quickly_and2".tr,
                    style: CustomTextStyles.bodyLargeGray70004,
                  ),
                  TextSpan(
                    text: "msg_would_you_like_to".tr,
                    style: CustomTextStyles.bodyLargeRed80016,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.v),
          _buildSkipForNowRow(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSkipForNowRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_skip_for_now".tr,
              margin: EdgeInsets.only(right: 6.h),
              buttonStyle: CustomButtonStyles.outlineGrayTL14,
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              height: 60.v,
              text: "lbl_yes_enable".tr,
              margin: EdgeInsets.only(left: 6.h),
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700Bold_1,
            ),
          ),
        ],
      ),
    );
  }
}
