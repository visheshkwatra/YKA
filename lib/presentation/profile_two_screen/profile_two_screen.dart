import 'bloc/profile_two_bloc.dart';
import 'models/profile_two_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';
import 'package:yka_app/widgets/custom_phone_number.dart';

class ProfileTwoScreen extends StatelessWidget {
  const ProfileTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileTwoBloc>(
      create: (context) => ProfileTwoBloc(ProfileTwoState(
        profileTwoModelObj: ProfileTwoModel(),
      ))
        ..add(ProfileTwoInitialEvent()),
      child: ProfileTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildBanner(context),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_sign_in".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      TextSpan(
                        text: "lbl_or".tr,
                        style: CustomTextStyles.headlineSmallSemiBold,
                      ),
                      TextSpan(
                        text: "lbl_register".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "msg_continue_with_a".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 25.h,
                ),
                child: BlocBuilder<ProfileTwoBloc, ProfileTwoState>(
                  builder: (context, state) {
                    return CustomPhoneNumber(
                      country: state.selectedCountry ??
                          CountryPickerUtils.getCountryByPhoneCode('1'),
                      controller: state.phoneNumberController,
                      onTap: (Country value) {
                        context
                            .read<ProfileTwoBloc>()
                            .add(ChangeCountryEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 15.v),
              _buildCpr(context),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.h,
                        vertical: 3.v,
                      ),
                      decoration: AppDecoration.fillRed70003.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.img,
                        height: 8.v,
                        width: 2.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "msg_you_can_t_use".tr,
                        style: CustomTextStyles.bodySmallOpenSansRed70003,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                buttonStyle: CustomButtonStyles.fillIndigoTL13,
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAppVersion(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner(BuildContext context) {
    return Container(
      decoration: AppDecoration.gradientRedAToRed,
      child: Container(
        height: 352.v,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup1790,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse30882,
              height: 247.v,
              width: 393.h,
              alignment: Alignment.bottomCenter,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 18.h,
                  bottom: 36.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 34.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                            margin: EdgeInsets.only(
                              top: 16.v,
                              bottom: 39.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.orange300,
                              borderRadius: BorderRadius.circular(
                                7.h,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup69x108,
                            height: 69.v,
                            width: 108.h,
                            margin: EdgeInsets.only(left: 75.h),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 52.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: SizedBox(
                                width: 226.h,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "msg_discover_premium2".tr,
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                      TextSpan(
                                        text: "lbl_exciting".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018_1,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "lbl_features".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              margin: EdgeInsets.only(
                                left: 43.h,
                                bottom: 34.v,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Container(
                      height: 2.v,
                      width: 41.h,
                      margin: EdgeInsets.only(left: 145.h),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(right: 15.h),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 96.h,
                            child: Row(
                              children: [
                                CustomIconButton(
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.all(8.h),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFi846355,
                                  ),
                                ),
                                Container(
                                  width: 53.h,
                                  margin: EdgeInsets.only(
                                    left: 3.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "lbl_sleek_servicing".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.labelLarge!.copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCar,
                              ),
                            ),
                          ),
                          Container(
                            width: 48.h,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 5.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_multiple_brands".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge!.copyWith(
                                height: 1.33,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: CustomIconButton(
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              padding: EdgeInsets.all(9.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFi388531,
                              ),
                            ),
                          ),
                          Container(
                            width: 43.h,
                            margin: EdgeInsets.only(
                              left: 4.h,
                              top: 5.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_secure_wheels".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge!.copyWith(
                                height: 1.33,
                              ),
                            ),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildCpr(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: 353.h,
        margin: EdgeInsets.symmetric(horizontal: 19.h),
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outlineRed.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_cpr".tr,
              style: CustomTextStyles.labelLargeRed70003,
            ),
            SizedBox(height: 3.v),
            Text(
              "lbl_987_765_6541".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppVersion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 147.h,
        right: 147.h,
        bottom: 26.v,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Text(
        "msg_app_version_1_1_0".tr.toUpperCase(),
        style: CustomTextStyles.labelMediumProximaNovaAlt,
      ),
    );
  }
}
