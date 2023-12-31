import '../profile_fiftyone_screen/widgets/userprofile4_item_widget.dart';
import 'bloc/profile_fiftyone_bloc.dart';
import 'models/profile_fiftyone_model.dart';
import 'models/userprofile4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileFiftyoneScreen extends StatelessWidget {
  const ProfileFiftyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFiftyoneBloc>(
      create: (context) => ProfileFiftyoneBloc(ProfileFiftyoneState(
        profileFiftyoneModelObj: ProfileFiftyoneModel(),
      ))
        ..add(ProfileFiftyoneInitialEvent()),
      child: ProfileFiftyoneScreen(),
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
          child: BlocSelector<ProfileFiftyoneBloc, ProfileFiftyoneState,
              ProfileFiftyoneModel?>(
            selector: (state) => state.profileFiftyoneModelObj,
            builder: (context, profileFiftyoneModelObj) {
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
                    profileFiftyoneModelObj?.userprofile4ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Userprofile4ItemModel model =
                      profileFiftyoneModelObj?.userprofile4ItemList[index] ??
                          Userprofile4ItemModel();
                  return Userprofile4ItemWidget(
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
