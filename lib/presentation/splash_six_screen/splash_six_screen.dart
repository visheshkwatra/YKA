import 'bloc/splash_six_bloc.dart';
import 'models/splash_six_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_title.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class SplashSixScreen extends StatelessWidget {
  const SplashSixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashSixBloc>(
      create: (context) => SplashSixBloc(SplashSixState(
        splashSixModelObj: SplashSixModel(),
      ))
        ..add(SplashSixInitialEvent()),
      child: SplashSixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashSixBloc, SplashSixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 259.v),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      Text(
                        "msg_no_bookings_found".tr,
                        style: CustomTextStyles.titleLargeRubikMedium,
                      ),
                      SizedBox(height: 375.v),
                      _buildSplashSix(context),
                    ],
                  ),
                ),
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
        text: "lbl_my_bookings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSplashSix(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(
              horizontal: 120.h,
              vertical: 35.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 31.v),
                CustomIconButton(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  padding: EdgeInsets.all(19.h),
                  decoration: IconButtonStyleHelper.outlineBlueTL35,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFi3781609,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_2019_ford_figo".tr,
              style: CustomTextStyles.titleMediumCircularStdGray90015,
            ),
          ),
          Opacity(
            opacity: 0.7,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(
                "msg_order_on_12th_oct".tr,
                style: CustomTextStyles.titleSmallCircularStdGray90015,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          CustomElevatedButton(
            height: 46.v,
            text: "msg_expected_delivery".tr,
            margin: EdgeInsets.only(left: 1.h),
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.titleSmallCircularStdBlack90005,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
