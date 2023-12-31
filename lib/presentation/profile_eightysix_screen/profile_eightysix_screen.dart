import '../profile_eightysix_screen/widgets/userprofile5_item_widget.dart';
import 'bloc/profile_eightysix_bloc.dart';
import 'models/profile_eightysix_model.dart';
import 'models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';
import 'package:yka_app/widgets/custom_search_view.dart';

class ProfileEightysixScreen extends StatelessWidget {
  const ProfileEightysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightysixBloc>(
      create: (context) => ProfileEightysixBloc(ProfileEightysixState(
        profileEightysixModelObj: ProfileEightysixModel(),
      ))
        ..add(ProfileEightysixInitialEvent()),
      child: ProfileEightysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSettingsStack(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 27.v,
                ),
                child: Column(
                  children: [
                    BlocSelector<ProfileEightysixBloc, ProfileEightysixState,
                        TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "lbl_gcc".tr,
                          hintStyle: CustomTextStyles.titleSmallBlack90005_1,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 19.v,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 24.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_our_services".tr,
                          style: CustomTextStyles.titleSmallGray70001,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildUserProfile(context),
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
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup563,
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
                      text: "lbl_vehicle_mileage".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 12.adaptSize,
              width: 12.adaptSize,
              margin: EdgeInsets.only(left: 157.h),
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<ProfileEightysixBloc, ProfileEightysixState,
          ProfileEightysixModel?>(
        selector: (state) => state.profileEightysixModelObj,
        builder: (context, profileEightysixModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 89.v,
              crossAxisCount: 2,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                profileEightysixModelObj?.userprofile5ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile5ItemModel model =
                  profileEightysixModelObj?.userprofile5ItemList[index] ??
                      Userprofile5ItemModel();
              return Userprofile5ItemWidget(
                model,
              );
            },
          );
        },
      ),
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
                      "lbl_book_slot".tr,
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
