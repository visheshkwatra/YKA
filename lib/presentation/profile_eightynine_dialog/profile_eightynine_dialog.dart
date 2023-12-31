import 'bloc/profile_eightynine_bloc.dart';
import 'models/profile_eightynine_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ProfileEightynineDialog extends StatelessWidget {
  const ProfileEightynineDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightynineBloc>(
      create: (context) => ProfileEightynineBloc(ProfileEightynineState(
        profileEightynineModelObj: ProfileEightynineModel(),
      ))
        ..add(ProfileEightynineInitialEvent()),
      child: ProfileEightynineDialog(),
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
          _buildProfileEightyNine(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileEightyNine(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 69.h),
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
          SizedBox(height: 27.v),
          Container(
            width: 183.h,
            margin: EdgeInsets.symmetric(horizontal: 9.h),
            child: Text(
              "msg_bhd_5_saved_on_total".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineSmallWhiteA700.copyWith(
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "msg_newjoinee40_applied".tr,
            style: CustomTextStyles.bodyLargeWhiteA70016,
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            height: 56.v,
            text: "lbl_yaay".tr,
            margin: EdgeInsets.only(
              left: 10.h,
              right: 17.h,
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
