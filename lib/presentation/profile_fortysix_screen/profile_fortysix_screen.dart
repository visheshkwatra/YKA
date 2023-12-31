import '../profile_fortysix_screen/widgets/cardetailslist2_item_widget.dart';
import 'bloc/profile_fortysix_bloc.dart';
import 'models/cardetailslist2_item_model.dart';
import 'models/profile_fortysix_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileFortysixScreen extends StatelessWidget {
  const ProfileFortysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFortysixBloc>(
      create: (context) => ProfileFortysixBloc(ProfileFortysixState(
        profileFortysixModelObj: ProfileFortysixModel(),
      ))
        ..add(ProfileFortysixInitialEvent()),
      child: ProfileFortysixScreen(),
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
          child: BlocSelector<ProfileFortysixBloc, ProfileFortysixState,
              ProfileFortysixModel?>(
            selector: (state) => state.profileFortysixModelObj,
            builder: (context, profileFortysixModelObj) {
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
                    profileFortysixModelObj?.cardetailslist2ItemList.length ??
                        0,
                itemBuilder: (context, index) {
                  Cardetailslist2ItemModel model =
                      profileFortysixModelObj?.cardetailslist2ItemList[index] ??
                          Cardetailslist2ItemModel();
                  return Cardetailslist2ItemWidget(
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
        text: "lbl_favourites".tr,
      ),
      styleType: Style.bgFill,
    );
  }
}
