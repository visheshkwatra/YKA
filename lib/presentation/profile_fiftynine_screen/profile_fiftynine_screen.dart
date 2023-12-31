import '../profile_fiftynine_screen/widgets/bookingstext1_item_widget.dart';
import 'bloc/profile_fiftynine_bloc.dart';
import 'models/bookingstext1_item_model.dart';
import 'models/profile_fiftynine_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightythree_page/profile_eightythree_page.dart';
import 'package:yka_app/presentation/profile_fortythree_page/profile_fortythree_page.dart';
import 'package:yka_app/presentation/var_eleven_tab_container_page/var_eleven_tab_container_page.dart';
import 'package:yka_app/presentation/var_six_page/var_six_page.dart';
import 'package:yka_app/widgets/custom_bottom_bar.dart';

class ProfileFiftynineScreen extends StatelessWidget {
  ProfileFiftynineScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFiftynineBloc>(
      create: (context) => ProfileFiftynineBloc(ProfileFiftynineState(
        profileFiftynineModelObj: ProfileFiftynineModel(),
      ))
        ..add(ProfileFiftynineInitialEvent()),
      child: ProfileFiftynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildProfileImage(context),
              SizedBox(height: 27.v),
              _buildMenuOptions(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileImage(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.gradientRedAToRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 13.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 123.h),
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: 96.adaptSize,
              width: 96.adaptSize,
              decoration: AppDecoration.outlineWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder48,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgBitmap,
                height: 96.adaptSize,
                width: 96.adaptSize,
                radius: BorderRadius.circular(
                  48.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_ahmad_rashi".tr,
            style: CustomTextStyles.titleLargeWhiteA700,
          ),
          SizedBox(height: 3.v),
          Text(
            "lbl_edit_profile".tr,
            style: CustomTextStyles.titleMediumWhiteA700SemiBold,
          ),
          SizedBox(height: 32.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFi6939131,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 5.v,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 1.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "msg_roadside_rescure".tr,
                              style: CustomTextStyles.titleSmallWhiteA700Bold15,
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgCheckmarkWhiteA70058x58,
                              height: 8.v,
                              width: 4.h,
                              margin: EdgeInsets.only(
                                left: 11.h,
                                top: 7.v,
                                bottom: 5.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "msg_your_trusted_companion".tr,
                          style: CustomTextStyles.bodySmallOpenSansWhiteA700,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20.v,
              width: 98.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: SizedBox(
                        width: 98.h,
                        child: Divider(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_my_menu".tr,
                      style: CustomTextStyles.titleSmallGray70001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            BlocSelector<ProfileFiftynineBloc, ProfileFiftynineState,
                ProfileFiftynineModel?>(
              selector: (state) => state.profileFiftynineModelObj,
              builder: (context, profileFiftynineModelObj) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 113.v,
                    crossAxisCount: 3,
                    mainAxisSpacing: 12.h,
                    crossAxisSpacing: 12.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                      profileFiftynineModelObj?.bookingstext1ItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    Bookingstext1ItemModel model = profileFiftynineModelObj
                            ?.bookingstext1ItemList[index] ??
                        Bookingstext1ItemModel();
                    return Bookingstext1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuOptions(BuildContext context) {
    return SizedBox(
      height: 272.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
            ),
          ),
          _buildLine(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.varElevenTabContainerPage;
      case BottomBarEnum.Findus:
        return AppRoutes.profileEightythreePage;
      case BottomBarEnum.Services:
        return AppRoutes.varSixPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileFortythreePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.varElevenTabContainerPage:
        return VarElevenTabContainerPage();
      case AppRoutes.profileEightythreePage:
        return ProfileEightythreePage();
      case AppRoutes.varSixPage:
        return VarSixPage();
      case AppRoutes.profileFortythreePage:
        return ProfileFortythreePage();
      default:
        return DefaultWidget();
    }
  }
}
