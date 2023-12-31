import 'bloc/profile_sixtysix_bloc.dart';
import 'models/profile_sixtysix_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

class ProfileSixtysixScreen extends StatelessWidget {
  const ProfileSixtysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixtysixBloc>(
      create: (context) => ProfileSixtysixBloc(ProfileSixtysixState(
        profileSixtysixModelObj: ProfileSixtysixModel(),
      ))
        ..add(ProfileSixtysixInitialEvent()),
      child: ProfileSixtysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSixtysixBloc, ProfileSixtysixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 106.v),
              child: Column(
                children: [
                  _buildBackgroundComplete(context),
                  SizedBox(height: 28.v),
                  Text(
                    "msg_no_bookings_found".tr,
                    style: CustomTextStyles.titleLarge21,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 218.h,
                    child: Text(
                      "msg_we_haven_t_find".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumBlack90005.copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  SizedBox(
                    height: 52.v,
                    width: 180.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Opacity(
                          opacity: 0.4,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 28.v,
                              width: 141.h,
                              margin: EdgeInsets.only(
                                left: 15.h,
                                bottom: 3.v,
                              ),
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.49),
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          height: 52.v,
                          width: 180.h,
                          text: "lbl_buy_car".tr,
                          buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallWhiteA700Bold15,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
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
        text: "lbl_bookings".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBackgroundComplete(BuildContext context) {
    return SizedBox(
      height: 239.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBackgroundComplete,
            height: 207.v,
            width: 393.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRewind,
            height: 87.v,
            width: 74.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 84.h),
          ),
        ],
      ),
    );
  }
}
