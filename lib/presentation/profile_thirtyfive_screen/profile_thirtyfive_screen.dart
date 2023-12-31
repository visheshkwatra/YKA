import 'bloc/profile_thirtyfive_bloc.dart';
import 'models/profile_thirtyfive_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileThirtyfiveScreen extends StatelessWidget {
  const ProfileThirtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileThirtyfiveBloc>(
      create: (context) => ProfileThirtyfiveBloc(ProfileThirtyfiveState(
        profileThirtyfiveModelObj: ProfileThirtyfiveModel(),
      ))
        ..add(ProfileThirtyfiveInitialEvent()),
      child: ProfileThirtyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileThirtyfiveBloc, ProfileThirtyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 24.v,
              ),
              child: Column(
                children: [
                  _buildFi1(context),
                  SizedBox(height: 12.v),
                  _buildLiveChat(context),
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
        text: "lbl_contact_us".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildFi1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildWhatsappSvgrepoCom(
          context,
          userImage: ImageConstant.imgFi3059446Primary,
          whatsapp: "lbl_call_us".tr,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 22.v,
          ),
          decoration: AppDecoration.fillWhiteA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrame,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 22.v),
              Text(
                "lbl_email_us".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        _buildWhatsappSvgrepoCom(
          context,
          userImage: ImageConstant.imgWhatsappSvgrepoCom,
          whatsapp: "lbl_whatsapp".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLiveChat(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 57.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 15.v),
                Text(
                  "lbl_live_chat".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCustomerSuppor,
                  height: 26.v,
                  width: 27.h,
                ),
                SizedBox(height: 14.v),
                Text(
                  "msg_roadside_assistance".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildWhatsappSvgrepoCom(
    BuildContext context, {
    required String userImage,
    required String whatsapp,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: userImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
          SizedBox(height: 21.v),
          Text(
            whatsapp,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray900,
            ),
          ),
        ],
      ),
    );
  }
}
