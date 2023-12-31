import '../profile_fortynine_screen/widgets/profilefortynine_item_widget.dart';
import 'bloc/profile_fortynine_bloc.dart';
import 'models/profile_fortynine_model.dart';
import 'models/profilefortynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileFortynineScreen extends StatelessWidget {
  const ProfileFortynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFortynineBloc>(
      create: (context) => ProfileFortynineBloc(ProfileFortynineState(
        profileFortynineModelObj: ProfileFortynineModel(),
      ))
        ..add(ProfileFortynineInitialEvent()),
      child: ProfileFortynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 24.v,
            right: 20.h,
          ),
          child: BlocSelector<ProfileFortynineBloc, ProfileFortynineState,
              ProfileFortynineModel?>(
            selector: (state) => state.profileFortynineModelObj,
            builder: (context, profileFortynineModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 26.v,
                  );
                },
                itemCount:
                    profileFortynineModelObj?.profilefortynineItemList.length ??
                        0,
                itemBuilder: (context, index) {
                  ProfilefortynineItemModel model = profileFortynineModelObj
                          ?.profilefortynineItemList[index] ??
                      ProfilefortynineItemModel();
                  return ProfilefortynineItemWidget(
                    model,
                  );
                },
              );
            },
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
        text: "lbl_bookings".tr,
      ),
      styleType: Style.bgFill,
    );
  }
}
