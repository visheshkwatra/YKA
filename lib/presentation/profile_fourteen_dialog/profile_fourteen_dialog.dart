import 'bloc/profile_fourteen_bloc.dart';
import 'models/profile_fourteen_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileFourteenDialog extends StatelessWidget {
  const ProfileFourteenDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFourteenBloc>(
      create: (context) => ProfileFourteenBloc(ProfileFourteenState(
        profileFourteenModelObj: ProfileFourteenModel(),
      ))
        ..add(ProfileFourteenInitialEvent()),
      child: ProfileFourteenDialog(),
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
      padding: EdgeInsets.symmetric(horizontal: 39.h),
      decoration: AppDecoration.gradientTealToTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 149.v,
            width: 201.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 20.v),
                    child: SizedBox(
                      width: 116.h,
                      child: Divider(
                        indent: 61.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFrame1171275236,
                  height: 149.v,
                  width: 201.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
          Text(
            "lbl_yka_alert".tr,
            style: CustomTextStyles.headlineSmallWhiteA700,
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 261.h,
            child: Text(
              "msg_we_have_received".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeWhiteA70016.copyWith(
                height: 1.63,
              ),
            ),
          ),
          SizedBox(height: 23.v),
          CustomElevatedButton(
            height: 56.v,
            width: 176.h,
            text: "lbl_go_to_home".tr,
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
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
