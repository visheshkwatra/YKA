import 'bloc/profile_eighty_bloc.dart';
import 'models/profile_eighty_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileEightyBottomsheet extends StatelessWidget {
  const ProfileEightyBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightyBloc>(
      create: (context) => ProfileEightyBloc(ProfileEightyState(
        profileEightyModelObj: ProfileEightyModel(),
      ))
        ..add(ProfileEightyInitialEvent()),
      child: ProfileEightyBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration.gradientGrayToTeal.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL401,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 174.v),
            Text(
              "lbl_are_you_sure".tr,
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 4.v),
            Container(
              width: 297.h,
              margin: EdgeInsets.only(
                left: 27.h,
                right: 29.h,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_this_action_will2".tr,
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
            SizedBox(height: 22.v),
            _buildLogoutConfirmation(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoutConfirmation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_no".tr,
              margin: EdgeInsets.only(right: 6.h),
              buttonStyle: CustomButtonStyles.outlineGrayTL14,
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              height: 60.v,
              text: "lbl_yes_logout".tr,
              margin: EdgeInsets.only(left: 6.h),
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700Bold_1,
            ),
          ),
        ],
      ),
    );
  }
}
