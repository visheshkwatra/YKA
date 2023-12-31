import '../profile_sixtyone_screen/widgets/userprofile9_item_widget.dart';
import 'bloc/profile_sixtyone_bloc.dart';
import 'models/profile_sixtyone_model.dart';
import 'models/userprofile9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileSixtyoneScreen extends StatelessWidget {
  const ProfileSixtyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixtyoneBloc>(
      create: (context) => ProfileSixtyoneBloc(ProfileSixtyoneState(
        profileSixtyoneModelObj: ProfileSixtyoneModel(),
      ))
        ..add(ProfileSixtyoneInitialEvent()),
      child: ProfileSixtyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
              _buildUserProfile(context),
              Spacer(),
              SizedBox(height: 36.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 71.v,
                  width: 64.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 54.adaptSize,
                            width: 54.adaptSize,
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
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 64.adaptSize,
                          width: 64.adaptSize,
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
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 3.v,
                          width: 18.h,
                          margin: EdgeInsets.only(top: 30.v),
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.circular(
                              1.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 18.v,
                          width: 3.h,
                          margin: EdgeInsets.only(top: 23.v),
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
        text: "lbl_addresses".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<ProfileSixtyoneBloc, ProfileSixtyoneState,
        ProfileSixtyoneModel?>(
      selector: (state) => state.profileSixtyoneModelObj,
      builder: (context, profileSixtyoneModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: profileSixtyoneModelObj?.userprofile9ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile9ItemModel model =
                profileSixtyoneModelObj?.userprofile9ItemList[index] ??
                    Userprofile9ItemModel();
            return Userprofile9ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
