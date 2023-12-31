import 'bloc/profile_seventysix_bloc.dart';
import 'models/profile_seventysix_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_checkbox_button.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class ProfileSeventysixScreen extends StatelessWidget {
  const ProfileSeventysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSeventysixBloc>(
      create: (context) => ProfileSeventysixBloc(ProfileSeventysixState(
        profileSeventysixModelObj: ProfileSeventysixModel(),
      ))
        ..add(ProfileSeventysixInitialEvent()),
      child: ProfileSeventysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSettingsColumn(context),
              SizedBox(height: 19.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      right: 12.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildStack(context),
                        SizedBox(height: 16.v),
                        _buildBookingDetailsColumn(context),
                        SizedBox(height: 16.v),
                        _buildStack1(context),
                        SizedBox(height: 69.v),
                        _buildCheckBox(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildCompleteBookingRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup674,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          CustomAppBar(
            height: 49.v,
            leadingWidth: 68.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.only(left: 20.h),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_confirmation".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 143.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.2,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 115.v,
                width: 271.h,
                margin: EdgeInsets.only(left: 8.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(right: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 66.v,
                          width: 68.h,
                          padding: EdgeInsets.all(17.h),
                          decoration: IconButtonStyleHelper.fillGrayTL10,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup676,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 10.v,
                            bottom: 8.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_yk_service_center".tr,
                                style:
                                    CustomTextStyles.titleSmallBlack90005Bold15,
                              ),
                              SizedBox(height: 7.v),
                              Text(
                                "msg_dubai_sports_city".tr,
                                style: CustomTextStyles.labelLargeBlack90005,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 18.v,
                            bottom: 11.v,
                          ),
                          child: CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.outlinePrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFi597177,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Divider(
                    color: appTheme.gray10005,
                    indent: 4.h,
                    endIndent: 4.h,
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg_home_pickup_drop".tr,
                            style: CustomTextStyles.bodySmallOpenSansGray80004,
                          ),
                        ),
                        CustomElevatedButton(
                          height: 30.v,
                          width: 86.h,
                          text: "lbl_2_4_km".tr,
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 6.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFi5665490,
                              height: 18.adaptSize,
                              width: 18.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillRed,
                          buttonTextStyle: theme.textTheme.labelLarge!,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookingDetailsColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "lbl_booking_details".tr,
            style: CustomTextStyles.titleSmallGray70001,
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.fillIndigo,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCircleClock1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_date".tr,
                        style: CustomTextStyles.bodySmallOpenSans,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_23_may_2023".tr,
                        style: CustomTextStyles.titleSmallBlack90005_2,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.v),
                  child: Text(
                    "lbl_edit".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeRed800Bold_2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  decoration: IconButtonStyleHelper.fillIndigo,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFramePrimary,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_gcc".tr,
                        style: CustomTextStyles.bodySmallOpenSans,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        "lbl_15003_km".tr,
                        style: CustomTextStyles.titleSmallBlack90005_2,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 17.v,
                    bottom: 13.v,
                  ),
                  child: Text(
                    "lbl_edit".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeRed800Bold_2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(14.h),
                  decoration: IconButtonStyleHelper.fillIndigo,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLocation,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_address".tr,
                        style: CustomTextStyles.bodySmallOpenSans,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "msg_airport_road_234".tr,
                        style: CustomTextStyles.titleSmallBlack90005_2,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    bottom: 14.v,
                  ),
                  child: Text(
                    "lbl_edit".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeRed800Bold_2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 13.h),
            child: Row(
              children: [
                CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  decoration: IconButtonStyleHelper.fillIndigo,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFramePrimary48x48,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 5.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_car".tr,
                        style: CustomTextStyles.bodySmallOpenSans,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "msg_ford_mustang_coupe".tr,
                        style: CustomTextStyles.titleSmallBlack90005_2,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    bottom: 14.v,
                  ),
                  child: Text(
                    "lbl_edit".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeRed800Bold_2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStack1(BuildContext context) {
    return SizedBox(
      height: 125.v,
      width: 369.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      right: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 31.v,
                          width: 25.h,
                          margin: EdgeInsets.only(
                            top: 10.v,
                            bottom: 2.v,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "lbl4".tr,
                                  style: CustomTextStyles.labelMediumWhiteA700,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: 25.adaptSize,
                                  width: 25.adaptSize,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgStar725x25,
                                        height: 25.adaptSize,
                                        width: 25.adaptSize,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl4".tr,
                                          style: CustomTextStyles
                                              .labelMediumWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_newjoinee5".tr,
                                style: CustomTextStyles.titleMedium_2,
                              ),
                              SizedBox(height: 2.v),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_get_a_flat".tr,
                                      style:
                                          CustomTextStyles.bodyMediumGray60014,
                                    ),
                                    TextSpan(
                                      text: "msg_bhd_5_on_the_order".tr,
                                      style: CustomTextStyles.titleSmallGray600,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 14.v,
                            bottom: 13.v,
                          ),
                          child: Text(
                            "lbl_apply".tr.toUpperCase(),
                            style: CustomTextStyles.labelLargeRed800Bold_2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Divider(
                    color: appTheme.gray30001,
                  ),
                  SizedBox(height: 13.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_view_more_coupons".tr,
                        style: CustomTextStyles.labelLargePrimary13,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightPrimary8x11,
                        height: 8.v,
                        width: 11.h,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 3.v,
                          bottom: 6.v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 36.v),
              decoration: BoxDecoration(
                color: appTheme.indigo5005,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 36.v),
              decoration: BoxDecoration(
                color: appTheme.indigo5005,
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            BlocSelector<ProfileSeventysixBloc, ProfileSeventysixState, bool?>(
          selector: (state) => state.checkBox,
          builder: (context, checkBox) {
            return CustomCheckboxButton(
              alignment: Alignment.centerLeft,
              text: "msg_i_agree_to_the_terms".tr,
              value: checkBox,
              onChange: (value) {
                context
                    .read<ProfileSeventysixBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCompleteBookingRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
        bottom: 34.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 12.v,
            ),
            child: Text(
              "msg_complete_booking".tr,
              style: CustomTextStyles.titleMediumWhiteA700_1,
            ),
          ),
          SizedBox(
            height: 50.adaptSize,
            width: 50.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.4,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 37.adaptSize,
                      width: 37.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.49),
                        borderRadius: BorderRadius.circular(
                          18.h,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  decoration: IconButtonStyleHelper.fillWhiteATL25,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowrightRed800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
