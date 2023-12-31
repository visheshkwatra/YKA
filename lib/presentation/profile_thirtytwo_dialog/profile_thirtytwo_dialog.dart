import 'bloc/profile_thirtytwo_bloc.dart';
import 'models/profile_thirtytwo_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileThirtytwoDialog extends StatelessWidget {
  const ProfileThirtytwoDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileThirtytwoBloc>(
      create: (context) => ProfileThirtytwoBloc(ProfileThirtytwoState(
        profileThirtytwoModelObj: ProfileThirtytwoModel(),
      ))
        ..add(ProfileThirtytwoInitialEvent()),
      child: ProfileThirtytwoDialog(),
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
      padding: EdgeInsets.symmetric(horizontal: 55.h),
      decoration: AppDecoration.gradientTealToTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150.v,
            width: 203.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 150.v,
                    width: 203.h,
                    decoration: BoxDecoration(
                      color: appTheme.teal400,
                      borderRadius: BorderRadius.circular(
                        101.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10.h,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 51.h,
                      vertical: 20.v,
                    ),
                    decoration: AppDecoration.fillTeal,
                    child: SizedBox(
                      width: 55.h,
                      child: Divider(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 29.v),
          Text(
            "lbl_pin_updated".tr,
            style: CustomTextStyles.headlineSmallWhiteA700,
          ),
          SizedBox(height: 6.v),
          SizedBox(
            width: 229.h,
            child: Text(
              "msg_you_pin_has_been".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeWhiteA70016.copyWith(
                height: 1.63,
              ),
            ),
          ),
          SizedBox(height: 29.v),
          CustomElevatedButton(
            height: 56.v,
            text: "lbl_go_to_home".tr,
            margin: EdgeInsets.only(
              left: 23.h,
              right: 30.h,
            ),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightRed800,
                height: 12.v,
                width: 15.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.titleMediumRed800,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
