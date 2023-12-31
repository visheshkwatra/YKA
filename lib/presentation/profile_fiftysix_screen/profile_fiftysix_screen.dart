import '../profile_fiftysix_screen/widgets/userprofile6_item_widget.dart';
import 'bloc/profile_fiftysix_bloc.dart';
import 'models/profile_fiftysix_model.dart';
import 'models/userprofile6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileFiftysixScreen extends StatelessWidget {
  const ProfileFiftysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFiftysixBloc>(
      create: (context) => ProfileFiftysixBloc(ProfileFiftysixState(
        profileFiftysixModelObj: ProfileFiftysixModel(),
      ))
        ..add(ProfileFiftysixInitialEvent()),
      child: ProfileFiftysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 713.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 24.v,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              _buildUserProfile(context),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 71.v,
                  width: 64.h,
                  margin: EdgeInsets.only(bottom: 36.v),
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
        text: "lbl_vehicles".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: BlocSelector<ProfileFiftysixBloc, ProfileFiftysixState,
          ProfileFiftysixModel?>(
        selector: (state) => state.profileFiftysixModelObj,
        builder: (context, profileFiftysixModelObj) {
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
            itemCount:
                profileFiftysixModelObj?.userprofile6ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile6ItemModel model =
                  profileFiftysixModelObj?.userprofile6ItemList[index] ??
                      Userprofile6ItemModel();
              return Userprofile6ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
