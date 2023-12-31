import 'bloc/profile_twentysix_bloc.dart';
import 'models/profile_twentysix_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_checkbox_button.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_pin_code_text_field.dart';

class ProfileTwentysixScreen extends StatelessWidget {
  const ProfileTwentysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileTwentysixBloc>(
      create: (context) => ProfileTwentysixBloc(ProfileTwentysixState(
        profileTwentysixModelObj: ProfileTwentysixModel(),
      ))
        ..add(ProfileTwentysixInitialEvent()),
      child: ProfileTwentysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 37.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 189.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_otp_sent".tr,
                        style: CustomTextStyles.headlineSmallRegular,
                      ),
                      TextSpan(
                        text: "lbl_to_your_number".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 7.v),
              Container(
                width: 277.h,
                margin: EdgeInsets.only(right: 75.h),
                child: Text(
                  "msg_enter_the_4_digit".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              BlocSelector<ProfileTwentysixBloc, ProfileTwentysixState,
                  TextEditingController?>(
                selector: (state) => state.otpController,
                builder: (context, otpController) {
                  return CustomPinCodeTextField(
                    context: context,
                    controller: otpController,
                    onChanged: (value) {
                      otpController?.text = value;
                    },
                  );
                },
              ),
              SizedBox(height: 20.v),
              _buildDidntReceiveOTP(context),
              SizedBox(height: 49.v),
              _buildCheckBox(context),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                buttonStyle: CustomButtonStyles.fillIndigoTL13,
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownWhiteA700,
        margin: EdgeInsets.fromLTRB(20.h, 3.v, 325.h, 3.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildDidntReceiveOTP(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_didn_t_receive_otp2".tr,
                  style: CustomTextStyles.bodySmallOpenSansBluegray50003,
                ),
                TextSpan(
                  text: "lbl_00_30".tr,
                  style: CustomTextStyles.labelLargeBluegray50003,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Text(
          "lbl_resend_otp".tr,
          style: CustomTextStyles.titleSmallRed800,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCheckBox(BuildContext context) {
    return BlocSelector<ProfileTwentysixBloc, ProfileTwentysixState, bool?>(
      selector: (state) => state.checkBox,
      builder: (context, checkBox) {
        return CustomCheckboxButton(
          text: "msg_i_agree_to_the_terms".tr,
          value: checkBox,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            context
                .read<ProfileTwentysixBloc>()
                .add(ChangeCheckBoxEvent(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppVersion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 139.h,
        right: 151.h,
        bottom: 26.v,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Text(
        "msg_app_version_4_4_9".tr.toUpperCase(),
        style: CustomTextStyles.labelMediumProximaNovaAlt,
      ),
    );
  }
}
