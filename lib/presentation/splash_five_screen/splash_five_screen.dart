import 'bloc/splash_five_bloc.dart';
import 'models/splash_five_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_title.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class SplashFiveScreen extends StatelessWidget {
  const SplashFiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashFiveBloc>(
      create: (context) => SplashFiveBloc(SplashFiveState(
        splashFiveModelObj: SplashFiveModel(),
      ))
        ..add(SplashFiveInitialEvent()),
      child: SplashFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashFiveBloc, SplashFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: Container(
              width: 375.h,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 27.v,
              ),
              child: Column(
                children: [
                  _buildFiRow1(context),
                  SizedBox(height: 24.v),
                  _buildOtherOptions(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgClockBlack90005,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_roadside_assistance".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFiRow1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlineBlueTL27,
            child: CustomImageView(
              imagePath: ImageConstant.imgFi3781609,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: _buildFord(
              context,
              dynamicText1: "lbl_yka_recovery".tr,
              dynamicText2: "msg_call_973_7888955435".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOtherOptions(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "lbl_other_options".tr,
            style: CustomTextStyles.bodyMediumRubikOnPrimaryContainer,
          ),
        ),
        SizedBox(height: 10.v),
        _buildFiRow(
          context,
          lincolnText: "lbl_ford".tr,
          callText: "msg_call_973_7888955435".tr,
        ),
        SizedBox(height: 8.v),
        _buildFiRow(
          context,
          lincolnText: "lbl_lincoln".tr,
          callText: "msg_call_973_7888955435".tr,
        ),
        SizedBox(height: 8.v),
        _buildFiRow(
          context,
          lincolnText: "lbl_jaguar".tr,
          callText: "msg_call_973_7888955435".tr,
        ),
        SizedBox(height: 8.v),
        _buildFiRow(
          context,
          lincolnText: "lbl_land_rover".tr,
          callText: "msg_call_973_7888955435".tr,
        ),
        SizedBox(height: 8.v),
        _buildFiRow(
          context,
          lincolnText: "lbl_maserati2".tr,
          callText: "msg_call_973_7888955435".tr,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFord(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dynamicText1,
          style: CustomTextStyles.titleSmallRubikBlack90005.copyWith(
            color: appTheme.black90005,
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          dynamicText2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black90005,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFiRow(
    BuildContext context, {
    required String lincolnText,
    required String callText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.outlineBlueTL27,
            child: CustomImageView(
              imagePath: ImageConstant.imgFi3781609,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 5.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lincolnText,
                  style: CustomTextStyles.titleSmallRubikBlack90005.copyWith(
                    color: appTheme.black90005,
                  ),
                ),
                SizedBox(height: 9.v),
                Text(
                  callText,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.black90005,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlue7000144x44,
            height: 9.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 21.v,
              right: 9.h,
              bottom: 25.v,
            ),
          ),
        ],
      ),
    );
  }
}
