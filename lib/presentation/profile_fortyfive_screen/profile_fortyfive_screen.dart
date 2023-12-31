import 'bloc/profile_fortyfive_bloc.dart';
import 'models/profile_fortyfive_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileFortyfiveScreen extends StatelessWidget {
  const ProfileFortyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFortyfiveBloc>(
      create: (context) => ProfileFortyfiveBloc(ProfileFortyfiveState(
        profileFortyfiveModelObj: ProfileFortyfiveModel(),
      ))
        ..add(ProfileFortyfiveInitialEvent()),
      child: ProfileFortyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFortyfiveBloc, ProfileFortyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              height: 713.v,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 60.v,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Opacity(
                    opacity: 0.7,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        margin: EdgeInsets.only(right: 5.h),
                        decoration: BoxDecoration(
                          color: appTheme.red60099,
                          borderRadius: BorderRadius.circular(
                            27.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 64.adaptSize,
                      width: 64.adaptSize,
                      margin: EdgeInsets.only(bottom: 7.v),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          32.h,
                        ),
                        border: Border.all(
                          color: appTheme.red500,
                          width: 3.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(1, 1),
                          colors: [
                            appTheme.red400,
                            appTheme.red70002,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 3.v,
                      width: 18.h,
                      margin: EdgeInsets.only(
                        right: 23.h,
                        bottom: 37.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 18.v,
                      width: 3.h,
                      margin: EdgeInsets.only(
                        right: 30.h,
                        bottom: 30.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                        borderRadius: BorderRadius.circular(
                          1.h,
                        ),
                      ),
                    ),
                  ),
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
        text: "lbl_addresses".tr,
      ),
      styleType: Style.bgFill,
    );
  }
}
