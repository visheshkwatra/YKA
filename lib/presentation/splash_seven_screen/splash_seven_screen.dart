import 'bloc/splash_seven_bloc.dart';
import 'models/splash_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_title.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class SplashSevenScreen extends StatelessWidget {
  const SplashSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashSevenBloc>(
      create: (context) => SplashSevenBloc(SplashSevenState(
        splashSevenModelObj: SplashSevenModel(),
      ))
        ..add(SplashSevenInitialEvent()),
      child: SplashSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashSevenBloc, SplashSevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: Container(
              width: 375.h,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 27.v,
              ),
              child: Column(
                children: [
                  _buildMessageViaWhatsapp(
                    context,
                    dynamicText: "lbl_call_us".tr,
                  ),
                  SizedBox(height: 12.v),
                  _buildMessageViaWhatsapp(
                    context,
                    dynamicText: "msg_message_via_whatsapp".tr,
                  ),
                  SizedBox(height: 12.v),
                  _buildMessageViaWhatsapp(
                    context,
                    dynamicText: "lbl_live_chat".tr,
                  ),
                  SizedBox(height: 12.v),
                  _buildMessageViaWhatsapp(
                    context,
                    dynamicText: "msg_roadside_assistance".tr,
                  ),
                  SizedBox(height: 12.v),
                  _buildMessageViaWhatsapp(
                    context,
                    dynamicText: "lbl_email_us".tr,
                  ),
                  SizedBox(height: 5.v),
                ],
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
        text: "lbl_contact_support".tr,
      ),
    );
  }

  /// Common widget
  Widget _buildMessageViaWhatsapp(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 3.v,
            ),
            child: Text(
              dynamicText,
              style: CustomTextStyles.titleSmallRubikBlack90005.copyWith(
                color: appTheme.black90005,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlue7000144x44,
            height: 9.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}
