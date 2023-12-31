import 'bloc/profile_eightyfive_bloc.dart';
import 'models/profile_eightyfive_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileEightyfiveScreen extends StatelessWidget {
  const ProfileEightyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightyfiveBloc>(
      create: (context) => ProfileEightyfiveBloc(ProfileEightyfiveState(
        profileEightyfiveModelObj: ProfileEightyfiveModel(),
      ))
        ..add(ProfileEightyfiveInitialEvent()),
      child: ProfileEightyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEightyfiveBloc, ProfileEightyfiveState>(
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
                  _buildLoremIpsumDolorRow(
                    context,
                    dynamicText: "msg_lorem_ipsum_dolor2".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildLoremIpsumDolorRow(
                    context,
                    dynamicText: "msg_lorem_ipsum_dolor2".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildLoremIpsumDolorRow(
                    context,
                    dynamicText: "msg_lorem_ipsum_dolor2".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildLoremIpsumDolorRow(
                    context,
                    dynamicText: "msg_lorem_ipsum_dolor2".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildLoremIpsumDolorRow(
                    context,
                    dynamicText: "msg_lorem_ipsum_dolor2".tr,
                  ),
                  SizedBox(height: 16.v),
                  _buildLoremIpsumDolorRow(
                    context,
                    dynamicText: "msg_lorem_ipsum_dolor2".tr,
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
        text: "lbl_faq_s".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Common widget
  Widget _buildLoremIpsumDolorRow(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              width: 273.h,
              margin: EdgeInsets.only(top: 4.v),
              child: Text(
                dynamicText,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMediumBlack9000515.copyWith(
                  color: appTheme.black90005,
                  height: 1.60,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector204,
            height: 4.v,
            width: 8.h,
            margin: EdgeInsets.only(
              left: 31.h,
              top: 26.v,
              bottom: 22.v,
            ),
          ),
        ],
      ),
    );
  }
}
