import '../profile_eightyfour_screen/widgets/userprofilelist2_item_widget.dart';
import 'bloc/profile_eightyfour_bloc.dart';
import 'models/profile_eightyfour_model.dart';
import 'models/userprofilelist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class ProfileEightyfourScreen extends StatelessWidget {
  const ProfileEightyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightyfourBloc>(
      create: (context) => ProfileEightyfourBloc(ProfileEightyfourState(
        profileEightyfourModelObj: ProfileEightyfourModel(),
      ))
        ..add(ProfileEightyfourInitialEvent()),
      child: ProfileEightyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSettingsStack(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 19.v,
                ),
                child: Column(
                  children: [
                    _buildUserProfileList(context),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                      height: 52.v,
                      text: "lbl_add_new_address".tr,
                      buttonStyle: CustomButtonStyles.fillRedTL10,
                      buttonTextStyle: CustomTextStyles.titleMediumRed800,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildNextColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsStack(BuildContext context) {
    return SizedBox(
      height: 105.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup674,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 11.v),
                  CustomAppBar(
                    height: 49.v,
                    leadingWidth: 68.h,
                    leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgSettings,
                      margin: EdgeInsets.only(left: 20.h),
                    ),
                    centerTitle: true,
                    title: AppbarSubtitle(
                      text: "lbl_select_address".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(right: 90.h),
              decoration: BoxDecoration(
                color: appTheme.red800,
                borderRadius: BorderRadius.circular(
                  6.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return BlocSelector<ProfileEightyfourBloc, ProfileEightyfourState,
        ProfileEightyfourModel?>(
      selector: (state) => state.profileEightyfourModelObj,
      builder: (context, profileEightyfourModelObj) {
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
              profileEightyfourModelObj?.userprofilelist2ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofilelist2ItemModel model =
                profileEightyfourModelObj?.userprofilelist2ItemList[index] ??
                    Userprofilelist2ItemModel();
            return Userprofilelist2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNextColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30.h,
        right: 24.h,
        bottom: 34.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup1171275205,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 339.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup1171275205,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 3.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_next".tr,
                    style: CustomTextStyles.titleSmallIndigo300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      "lbl_confirmation".tr,
                      style: CustomTextStyles.titleMediumWhiteA700_1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50.adaptSize,
              width: 50.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.4,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 37.adaptSize,
                        width: 37.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700.withOpacity(0.49),
                          borderRadius: BorderRadius.circular(
                            18.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(17.h),
                    decoration: IconButtonStyleHelper.fillWhiteATL25,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightRed800,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
