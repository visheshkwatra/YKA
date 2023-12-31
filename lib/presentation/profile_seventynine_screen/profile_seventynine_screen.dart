import 'bloc/profile_seventynine_bloc.dart';
import 'models/profile_seventynine_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_checkbox_button.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';
import 'package:yka_app/widgets/custom_text_form_field.dart';

class ProfileSeventynineScreen extends StatelessWidget {
  const ProfileSeventynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSeventynineBloc>(
      create: (context) => ProfileSeventynineBloc(ProfileSeventynineState(
        profileSeventynineModelObj: ProfileSeventynineModel(),
      ))
        ..add(ProfileSeventynineInitialEvent()),
      child: ProfileSeventynineScreen(),
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
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSettingsColumn(context),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 24.v,
                  ),
                  child: Column(
                    children: [
                      _buildSearchBarRow(context),
                      SizedBox(height: 26.v),
                      _buildApplyCouponColumn(context),
                      Spacer(),
                      SizedBox(height: 8.v),
                      _buildIAgreeToTheTermsCheckBox(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildCompleteBookingColumn(context),
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
            ImageConstant.imgGroup536,
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
              text: "lbl_coupon".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBarRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: BlocSelector<ProfileSeventynineBloc,
                  ProfileSeventynineState, TextEditingController?>(
                selector: (state) => state.entercouponcodeController,
                builder: (context, entercouponcodeController) {
                  return CustomTextFormField(
                    controller: entercouponcodeController,
                    hintText: "msg_enter_coupon_code".tr,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
            ),
          ),
          Opacity(
            opacity: 0.2,
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 3.v,
                bottom: 2.v,
              ),
              child: Text(
                "lbl_apply".tr.toUpperCase(),
                style: CustomTextStyles.labelLargeRed800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyCouponColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Text(
              "msg_new_year_gift_bhd".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            height: 21.v,
            width: 145.h,
            margin: EdgeInsets.only(left: 17.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl4".tr,
                    style: CustomTextStyles.labelMediumWhiteA700,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_riyadhmotors50".tr,
                    style: CustomTextStyles.bodyMediumBluegray70001,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_apply_coupon".tr.toUpperCase(),
            buttonStyle: CustomButtonStyles.fillIndigoBL14,
            buttonTextStyle: CustomTextStyles.titleSmallPrimaryBold_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIAgreeToTheTermsCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child:
          BlocSelector<ProfileSeventynineBloc, ProfileSeventynineState, bool?>(
        selector: (state) => state.iAgreeToTheTermsCheckBox,
        builder: (context, iAgreeToTheTermsCheckBox) {
          return CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_i_agree_to_the_terms".tr,
            value: iAgreeToTheTermsCheckBox,
            onChange: (value) {
              context
                  .read<ProfileSeventynineBloc>()
                  .add(ChangeCheckBoxEvent(value: value));
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCompleteBookingColumn(BuildContext context) {
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
      ),
    );
  }
}
