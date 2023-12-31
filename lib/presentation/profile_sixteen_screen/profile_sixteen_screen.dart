import 'bloc/profile_sixteen_bloc.dart';
import 'models/profile_sixteen_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_floating_text_field.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';
import 'package:yka_app/widgets/custom_phone_number.dart';

class ProfileSixteenScreen extends StatelessWidget {
  const ProfileSixteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixteenBloc>(
      create: (context) => ProfileSixteenBloc(ProfileSixteenState(
        profileSixteenModelObj: ProfileSixteenModel(),
      ))
        ..add(ProfileSixteenInitialEvent()),
      child: ProfileSixteenScreen(),
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
            children: [
              _buildBanner(context),
              SizedBox(height: 38.v),
              _buildProfileSixteen(context),
            ],
          ),
        ),
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
              imagePath: ImageConstant.imgEllipse30885,
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
  Widget _buildProfileSixteen(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 21.h),
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
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Text(
              "msg_continue_with_a".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            right: 25.h,
          ),
          child: BlocBuilder<ProfileSixteenBloc, ProfileSixteenState>(
            builder: (context, state) {
              return CustomPhoneNumber(
                country: state.selectedCountry ??
                    CountryPickerUtils.getCountryByPhoneCode('1'),
                controller: state.phoneNumberController,
                onTap: (Country value) {
                  context
                      .read<ProfileSixteenBloc>()
                      .add(ChangeCountryEvent(value: value));
                },
              );
            },
          ),
        ),
        SizedBox(height: 16.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: BlocSelector<ProfileSixteenBloc, ProfileSixteenState,
              TextEditingController?>(
            selector: (state) => state.cprLabelController,
            builder: (context, cprLabelController) {
              return CustomFloatingTextField(
                controller: cprLabelController,
                labelText: "lbl_cpr".tr,
                labelStyle: CustomTextStyles.titleMediumSemiBold,
                hintText: "lbl_cpr".tr,
                textInputAction: TextInputAction.done,
              );
            },
          ),
        ),
        SizedBox(height: 36.v),
        SizedBox(
          height: 66.v,
          width: 352.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              CustomElevatedButton(
                width: 352.h,
                text: "lbl_continue".tr,
                alignment: Alignment.topCenter,
              ),
              Opacity(
                opacity: 0.2,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 54.v,
                    width: 313.h,
                    margin: EdgeInsets.only(left: 14.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.42),
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconFingerprint,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 2.v,
              ),
              child: Text(
                "msg_use_biometric_to".tr,
                style: CustomTextStyles.titleMediumPrimary,
              ),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        CustomElevatedButton(
          height: 69.v,
          text: "msg_app_version_1_1_0".tr.toUpperCase(),
          buttonStyle: CustomButtonStyles.fillWhiteA1,
          buttonTextStyle: CustomTextStyles.labelMediumProximaNovaAlt,
        ),
      ],
    );
  }
}
