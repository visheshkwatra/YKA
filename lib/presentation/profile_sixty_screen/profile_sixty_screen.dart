import '../profile_sixty_screen/widgets/cardetailslist4_item_widget.dart';
import 'bloc/profile_sixty_bloc.dart';
import 'models/cardetailslist4_item_model.dart';
import 'models/profile_sixty_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileSixtyScreen extends StatelessWidget {
  const ProfileSixtyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixtyBloc>(
      create: (context) => ProfileSixtyBloc(ProfileSixtyState(
        profileSixtyModelObj: ProfileSixtyModel(),
      ))
        ..add(ProfileSixtyInitialEvent()),
      child: ProfileSixtyScreen(),
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
          child: BlocSelector<ProfileSixtyBloc, ProfileSixtyState,
              ProfileSixtyModel?>(
            selector: (state) => state.profileSixtyModelObj,
            builder: (context, profileSixtyModelObj) {
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
                    profileSixtyModelObj?.cardetailslist4ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Cardetailslist4ItemModel model =
                      profileSixtyModelObj?.cardetailslist4ItemList[index] ??
                          Cardetailslist4ItemModel();
                  return Cardetailslist4ItemWidget(
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
