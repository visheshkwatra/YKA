import 'bloc/profile_one_bloc.dart';
import 'models/profile_one_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';
import 'package:yka_app/widgets/custom_phone_number.dart';

class ProfileOneScreen extends StatelessWidget {
  const ProfileOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileOneBloc>(
      create: (context) => ProfileOneBloc(ProfileOneState(
        profileOneModelObj: ProfileOneModel(),
      ))
        ..add(ProfileOneInitialEvent()),
      child: ProfileOneScreen(),
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
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
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
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
                child: BlocBuilder<ProfileOneBloc, ProfileOneState>(
                  builder: (context, state) {
                    return CustomPhoneNumber(
                      country: state.selectedCountry ??
                          CountryPickerUtils.getCountryByPhoneCode('1'),
                      controller: state.phoneNumberController,
                      onTap: (Country value) {
                        context
                            .read<ProfileOneBloc>()
                            .add(ChangeCountryEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 16.v),
              _buildCpr(context),
              SizedBox(height: 36.v),
              _buildContinueButton(context),
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
              imagePath: ImageConstant.imgEllipse3088247x393,
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
    return Container(
      width: 353.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_cpr".tr,
            style: CustomTextStyles.labelLargeBluegray10002,
          ),
          SizedBox(height: 3.v),
          Text(
            "lbl_987_765_6541".tr,
            style: CustomTextStyles.titleMediumSemiBold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return SizedBox(
      height: 66.v,
      width: 352.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
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
          CustomElevatedButton(
            width: 352.h,
            text: "lbl_continue".tr,
            alignment: Alignment.topCenter,
          ),
        ],
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
