import 'bloc/profile_sixtytwo_bloc.dart';
import 'models/profile_sixtytwo_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/core/utils/validation_functions.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_floating_text_field.dart';
import 'package:yka_app/widgets/custom_phone_number.dart';

class ProfileSixtytwoScreen extends StatelessWidget {
  ProfileSixtytwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixtytwoBloc>(
      create: (context) => ProfileSixtytwoBloc(ProfileSixtytwoState(
        profileSixtytwoModelObj: ProfileSixtytwoModel(),
      ))
        ..add(ProfileSixtytwoInitialEvent()),
      child: ProfileSixtytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 40.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3017,
                          height: 113.adaptSize,
                          width: 113.adaptSize,
                          radius: BorderRadius.circular(
                            56.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 30.v,
                            bottom: 30.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_profile_picture".tr,
                                style: CustomTextStyles.titleSmallBluegray70006,
                              ),
                              SizedBox(height: 9.v),
                              Text(
                                "lbl_change_photo".tr,
                                style: CustomTextStyles.titleMediumRed800,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_personal_details".tr,
                    style: CustomTextStyles.titleSmallGray70001,
                  ),
                ),
                SizedBox(height: 13.v),
                _buildFloatingTextField(context),
                SizedBox(height: 16.v),
                _buildFloatingTextField1(context),
                SizedBox(height: 16.v),
                _buildPhoneNumber(context),
                SizedBox(height: 16.v),
                _buildFloatingTextField2(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildStack(context),
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
        text: "lbl_edit_profile".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField(BuildContext context) {
    return BlocSelector<ProfileSixtytwoBloc, ProfileSixtytwoState,
        TextEditingController?>(
      selector: (state) => state.floatingTextFieldController,
      builder: (context, floatingTextFieldController) {
        return CustomFloatingTextField(
          controller: floatingTextFieldController,
          labelText: "lbl_first_name".tr,
          labelStyle: CustomTextStyles.titleMediumSemiBold,
          hintText: "lbl_first_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField1(BuildContext context) {
    return BlocSelector<ProfileSixtytwoBloc, ProfileSixtytwoState,
        TextEditingController?>(
      selector: (state) => state.floatingTextFieldController1,
      builder: (context, floatingTextFieldController1) {
        return CustomFloatingTextField(
          controller: floatingTextFieldController1,
          labelText: "lbl_last_name".tr,
          labelStyle: CustomTextStyles.titleMediumSemiBold,
          hintText: "lbl_last_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocBuilder<ProfileSixtytwoBloc, ProfileSixtytwoState>(
      builder: (context, state) {
        return CustomPhoneNumber(
          country: state.selectedCountry ??
              CountryPickerUtils.getCountryByPhoneCode('1'),
          controller: state.phoneNumberController,
          onTap: (Country value) {
            context
                .read<ProfileSixtytwoBloc>()
                .add(ChangeCountryEvent(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField2(BuildContext context) {
    return BlocSelector<ProfileSixtytwoBloc, ProfileSixtytwoState,
        TextEditingController?>(
      selector: (state) => state.floatingTextFieldController2,
      builder: (context, floatingTextFieldController2) {
        return CustomFloatingTextField(
          controller: floatingTextFieldController2,
          labelText: "lbl_cpr".tr,
          labelStyle: CustomTextStyles.titleMediumSemiBold,
          hintText: "lbl_cpr".tr,
          textInputAction: TextInputAction.done,
          borderDecoration: FloatingTextFormFieldStyleHelper.fillWhiteATL12,
          fillColor: appTheme.whiteA700.withOpacity(0.4),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return CustomElevatedButton(
      width: 352.h,
      text: "lbl_update".tr,
      alignment: Alignment.topCenter,
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return Container(
      height: 67.v,
      width: 352.h,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 15.v,
      ),
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
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.42),
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                ),
              ),
            ),
          ),
          _buildButton(context),
        ],
      ),
    );
  }
}
