import 'bloc/profile_fiftyeight_bloc.dart';
import 'models/profile_fiftyeight_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_switch.dart';

class ProfileFiftyeightScreen extends StatelessWidget {
  const ProfileFiftyeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFiftyeightBloc>(
      create: (context) => ProfileFiftyeightBloc(ProfileFiftyeightState(
        profileFiftyeightModelObj: ProfileFiftyeightModel(),
      ))
        ..add(ProfileFiftyeightInitialEvent()),
      child: ProfileFiftyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 353.h,
          margin: EdgeInsets.fromLTRB(20.h, 24.v, 20.h, 5.v),
          padding: EdgeInsets.all(22.h),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseRed80002,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 9.v,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "lbl_language".tr,
                        style: CustomTextStyles.titleSmallBluegray800,
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      height: 31.v,
                      width: 86.h,
                      text: "lbl_english".tr,
                      margin: EdgeInsets.only(top: 3.v),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 6.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle34626269,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                        ),
                      ),
                      buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildVectorStack(context),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildProfileRow(
                  context,
                  userImage: ImageConstant.imgUserRed80002,
                  fAQ: "lbl_change_pin2".tr,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildVectorStack(context),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPlayRed80002,
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFi2313181,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 9.v,
                        bottom: 6.v,
                      ),
                      child: Text(
                        "lbl_biometric_login".tr,
                        style: CustomTextStyles.titleSmallBluegray800,
                      ),
                    ),
                    Spacer(),
                    BlocSelector<ProfileFiftyeightBloc, ProfileFiftyeightState,
                        bool?>(
                      selector: (state) => state.isSelectedSwitch,
                      builder: (context, isSelectedSwitch) {
                        return CustomSwitch(
                          margin: EdgeInsets.only(top: 5.v),
                          value: isSelectedSwitch,
                          onChange: (value) {
                            context
                                .read<ProfileFiftyeightBloc>()
                                .add(ChangeSwitchEvent(value: value));
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildVectorStack(context),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildProfileRow(
                  context,
                  userImage: ImageConstant.imgProfile,
                  fAQ: "lbl_faq".tr,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildVectorStack(context),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildProfileRow(
                  context,
                  userImage: ImageConstant.imgPlayRed8000236x36,
                  fAQ: "lbl_about_us2".tr,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildVectorStack(context),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildProfileRow(
                  context,
                  userImage: ImageConstant.imgThumbsUpRed80002,
                  fAQ: "msg_terms_conditions2".tr,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildVectorStack(context),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildProfileRow(
                  context,
                  userImage: ImageConstant.imgUserRed8000236x36,
                  fAQ: "lbl_privacy_policy".tr,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildVectorStack(context),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: _buildProfileRow(
                  context,
                  userImage: ImageConstant.imgCloseRed8000236x36,
                  fAQ: "lbl_logout".tr,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 100.v,
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgSettings,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 31.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_settings".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Common widget
  Widget _buildVectorStack(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: 261.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 261.h,
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 261.h,
              child: Divider(
                color: appTheme.gray100,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildProfileRow(
    BuildContext context, {
    required String userImage,
    required String fAQ,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 36.adaptSize,
          width: 36.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 9.v,
            bottom: 6.v,
          ),
          child: Text(
            fAQ,
            style: CustomTextStyles.titleSmallBluegray800.copyWith(
              color: appTheme.blueGray800,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 8.v,
          width: 4.h,
          margin: EdgeInsets.symmetric(vertical: 14.v),
        ),
      ],
    );
  }
}
