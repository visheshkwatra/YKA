import 'bloc/profile_sixtynine_bloc.dart';
import 'models/profile_sixtynine_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class ProfileSixtynineScreen extends StatelessWidget {
  const ProfileSixtynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixtynineBloc>(
      create: (context) => ProfileSixtynineBloc(ProfileSixtynineState(
        profileSixtynineModelObj: ProfileSixtynineModel(),
      ))
        ..add(ProfileSixtynineInitialEvent()),
      child: ProfileSixtynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSixtynineBloc, ProfileSixtynineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildSettingsStack(context),
                  _buildSelectDateColumn(context),
                ],
              ),
            ),
            bottomNavigationBar: _buildNextColumn(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSettingsStack(BuildContext context) {
    return SizedBox(
      height: 105.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup550,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                      text: "lbl_book_slot".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(right: 157.h),
              decoration: BoxDecoration(
                color: appTheme.red800,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectDateColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 27.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_select_date".tr,
            style: CustomTextStyles.titleSmallGray70001,
          ),
          SizedBox(height: 37.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 111.v,
                width: 108.h,
                margin: EdgeInsets.only(
                  top: 184.v,
                  bottom: 133.v,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 60.v,
                        width: 108.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_2023".tr,
                                    style:
                                        CustomTextStyles.headlineSmallPrimary,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "lbl_y".tr,
                                    style: CustomTextStyles.bodyLargePrimary,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 40.v),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                "lbl_2024".tr,
                                style: CustomTextStyles
                                    .titleLargeGray70002Regular_1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 429.v,
                width: 108.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60.v,
                        width: 108.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.3,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "lbl_06".tr,
                                  style: CustomTextStyles
                                      .titleLargeGray70002Regular,
                                ),
                              ),
                            ),
                            SizedBox(height: 39.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "lbl_07".tr,
                                  style: CustomTextStyles.titleLargeGray70002,
                                ),
                              ),
                            ),
                            SizedBox(height: 39.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_08".tr,
                                style: CustomTextStyles
                                    .titleLargeGray70002Regular_1,
                              ),
                            ),
                            SizedBox(height: 41.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_09".tr,
                                    style:
                                        CustomTextStyles.headlineSmallPrimary,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "lbl_m".tr,
                                    style: CustomTextStyles.bodyLargePrimary,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 41.v),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_10".tr,
                                style: CustomTextStyles
                                    .titleLargeGray70002Regular_1,
                              ),
                            ),
                            SizedBox(height: 39.v),
                            Opacity(
                              opacity: 0.5,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "lbl_11".tr,
                                  style: CustomTextStyles.titleLargeGray70002,
                                ),
                              ),
                            ),
                            SizedBox(height: 38.v),
                            Opacity(
                              opacity: 0.3,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "lbl_12".tr,
                                  style: CustomTextStyles
                                      .titleLargeGray70002Regular,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 430.v,
                width: 108.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60.v,
                        width: 108.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(
                            16.h,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.3,
                              child: Text(
                                "lbl_21".tr,
                                style:
                                    CustomTextStyles.titleLargeGray70002Regular,
                              ),
                            ),
                            SizedBox(height: 39.v),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "lbl_22".tr,
                                style: CustomTextStyles.titleLargeGray70002,
                              ),
                            ),
                            SizedBox(height: 39.v),
                            Text(
                              "lbl_23".tr,
                              style:
                                  CustomTextStyles.titleLargeGray70002Regular_1,
                            ),
                            SizedBox(height: 41.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_24".tr,
                                    style:
                                        CustomTextStyles.headlineSmallPrimary,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                  TextSpan(
                                    text: "lbl_d".tr,
                                    style: CustomTextStyles.bodyLargePrimary,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 41.v),
                            Text(
                              "lbl_25".tr,
                              style:
                                  CustomTextStyles.titleLargeGray70002Regular_1,
                            ),
                            SizedBox(height: 39.v),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "lbl_26".tr,
                                style: CustomTextStyles.titleLargeGray70002,
                              ),
                            ),
                            SizedBox(height: 38.v),
                            Opacity(
                              opacity: 0.3,
                              child: Text(
                                "lbl_27".tr,
                                style:
                                    CustomTextStyles.titleLargeGray70002Regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNextColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
        bottom: 34.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup1171275205,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 339.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup1171275205,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 3.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_next".tr,
                    style: CustomTextStyles.titleSmallIndigo300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      "lbl_select_address".tr,
                      style: CustomTextStyles.titleMediumWhiteA700_1,
                    ),
                  ),
                ],
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
      ),
    );
  }
}
