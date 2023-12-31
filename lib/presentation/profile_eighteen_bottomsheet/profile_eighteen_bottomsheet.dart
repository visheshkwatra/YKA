import 'bloc/profile_eighteen_bloc.dart';
import 'models/profile_eighteen_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileEighteenBottomsheet extends StatelessWidget {
  const ProfileEighteenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEighteenBloc>(
      create: (context) => ProfileEighteenBloc(ProfileEighteenState(
        profileEighteenModelObj: ProfileEighteenModel(),
      ))
        ..add(ProfileEighteenInitialEvent()),
      child: ProfileEighteenBottomsheet(),
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
              width: 290.h,
              margin: EdgeInsets.only(
                left: 31.h,
                right: 33.h,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_this_will_result2".tr,
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
            _buildEditDetailsRow(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditDetailsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomOutlinedButton(
              text: "lbl_edit_details".tr,
              margin: EdgeInsets.only(right: 6.h),
              buttonStyle: CustomButtonStyles.outlineGrayTL14,
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              height: 60.v,
              text: "lbl_confirm".tr,
              margin: EdgeInsets.only(left: 6.h),
              buttonTextStyle: CustomTextStyles.titleSmallWhiteA700Bold_1,
            ),
          ),
        ],
      ),
    );
  }
}
