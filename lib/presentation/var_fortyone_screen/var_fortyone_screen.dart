import '../var_fortyone_screen/widgets/viewhierarchy2_item_widget.dart';
import 'bloc/var_fortyone_bloc.dart';
import 'models/var_fortyone_model.dart';
import 'models/viewhierarchy2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightythree_page/profile_eightythree_page.dart';
import 'package:yka_app/presentation/profile_fortythree_page/profile_fortythree_page.dart';
import 'package:yka_app/presentation/var_eleven_tab_container_page/var_eleven_tab_container_page.dart';
import 'package:yka_app/presentation/var_six_page/var_six_page.dart';
import 'package:yka_app/widgets/app_bar/appbar_image.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:yka_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_bottom_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_search_view.dart';

class VarFortyoneScreen extends StatelessWidget {
  VarFortyoneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<VarFortyoneBloc>(
      create: (context) => VarFortyoneBloc(VarFortyoneState(
        varFortyoneModelObj: VarFortyoneModel(),
      ))
        ..add(VarFortyoneInitialEvent()),
      child: VarFortyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSearchStack(context),
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildAddCarRow(context),
                        SizedBox(height: 32.v),
                        _buildFrameThirtyThreeStack(context),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 120.h),
                          child: Container(
                            height: 4.v,
                            width: 113.h,
                            decoration: BoxDecoration(
                              color: appTheme.indigo5005,
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                              child: LinearProgressIndicator(
                                value: 0.29,
                                backgroundColor: appTheme.indigo5005,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 28.v),
                        _buildButton1Column(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.indigo5005,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Container(
        height: 169.v,
        width: double.maxFinite,
        decoration: AppDecoration.fillIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.indigo5002.withOpacity(0),
                    appTheme.indigo5002,
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  padding: EdgeInsets.all(19.h),
                  decoration: AppDecoration.outline1.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 39.v),
                      BlocSelector<VarFortyoneBloc, VarFortyoneState,
                          TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_search".tr,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomAppBar(
              height: 80.v,
              leadingWidth: 69.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgPlay49x48,
                margin: EdgeInsets.only(left: 21.h),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: OutlineGradientButton(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                    right: 2.h,
                    bottom: 2.v,
                  ),
                  strokeWidth: 2.h,
                  gradient: LinearGradient(
                    begin: Alignment(0, -0.05),
                    end: Alignment(0.02, 0.07),
                    colors: [
                      appTheme.whiteA700,
                      appTheme.whiteA700.withOpacity(0),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(6),
                    topRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  child: Container(
                    decoration: AppDecoration.gradientRedToRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppbarSubtitleFour(
                          text: "lbl_hey_ahmed".tr,
                          margin: EdgeInsets.only(right: 36.h),
                        ),
                        SizedBox(height: 1.v),
                        AppbarImage(
                          imagePath: ImageConstant.imgRectangle1674,
                          margin: EdgeInsets.only(right: 92.h),
                        ),
                        AppbarSubtitleSix(
                          text: "msg_60612_riyadh_il".tr,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            right: 18.h,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        AppbarImage(
                          imagePath: ImageConstant.imgVector496,
                          margin: EdgeInsets.only(
                            left: 115.h,
                            right: 10.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              actions: [
                AppbarTrailingIconbuttonOne(
                  imagePath: ImageConstant.imgUserIndigo800,
                  margin: EdgeInsets.fromLTRB(20.h, 5.v, 20.h, 7.v),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddCarRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 13.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_eager_to_delve_deeper".tr,
                style: CustomTextStyles.bodyMediumRed800,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_describe".tr,
                      style: CustomTextStyles.titleMediumRed80018,
                    ),
                    TextSpan(
                      text: "lbl_your".tr,
                      style: CustomTextStyles.bodyLargeRed800,
                    ),
                    TextSpan(
                      text: "lbl_vehicle".tr,
                      style: CustomTextStyles.bodyLargeRed800,
                    ),
                    TextSpan(
                      text: "lbl6".tr,
                      style: CustomTextStyles.bodyLargeRed800,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                height: 28.v,
                width: 76.h,
                text: "lbl_add_car2".tr,
                buttonStyle: CustomButtonStyles.fillRed,
                buttonTextStyle: CustomTextStyles.labelMediumWhiteA700_2,
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFrame1171275212,
          height: 101.v,
          width: 180.h,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameThirtyThreeStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blue90001,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 110.v,
        width: 353.h,
        decoration: AppDecoration.gradientIndigoToBlue.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 25.v,
                width: 196.h,
                margin: EdgeInsets.only(bottom: 6.v),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 25.v,
                        width: 196.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(
                            98.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector505,
                      height: 5.v,
                      width: 9.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 63.h,
                        bottom: 8.v,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_driving_pleasure".tr,
                      style: CustomTextStyles.titleSmallDMSansWhiteA700,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "msg_precision_care_for".tr,
                      style: CustomTextStyles.bodySmallDMSansWhiteA700,
                    ),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                      height: 25.v,
                      width: 119.h,
                      text: "msg_explore_services".tr,
                      buttonStyle: CustomButtonStyles.fillWhiteATL4,
                      buttonTextStyle:
                          CustomTextStyles.labelMediumDMSansPrimary,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 130.h),
                child: IntrinsicWidth(
                  child: SizedBox(
                    height: 110.v,
                    width: 223.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 1.h,
                              bottom: 15.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 9.v,
                                  width: 99.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  decoration: BoxDecoration(
                                    color: appTheme.black90005.withOpacity(0.5),
                                  ),
                                ),
                                Container(
                                  height: 5.v,
                                  width: 33.h,
                                  margin: EdgeInsets.only(
                                    left: 16.h,
                                    top: 4.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.black90005.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(
                                      16.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse29401x15,
                          height: 1.v,
                          width: 15.h,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(bottom: 12.v),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 164.v,
                            width: 243.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.img292164x243,
                                  height: 164.v,
                                  width: 243.h,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 36.h,
                                      bottom: 20.v,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 1.v,
                                            width: 10.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5.h,
                                              ),
                                              gradient: LinearGradient(
                                                begin: Alignment(0, 0.57),
                                                end: Alignment(1, 0.57),
                                                colors: [
                                                  appTheme.black90005
                                                      .withOpacity(0.2),
                                                  appTheme.black90005
                                                      .withOpacity(0.08),
                                                  appTheme.black90005
                                                      .withOpacity(0.05),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 4.v),
                                        Container(
                                          height: 1.v,
                                          width: 16.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              8.h,
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment(0, 0.57),
                                              end: Alignment(1, 0.57),
                                              colors: [
                                                appTheme.black90005
                                                    .withOpacity(0.2),
                                                appTheme.black90005
                                                    .withOpacity(0.08),
                                                appTheme.black90005
                                                    .withOpacity(0.05),
                                              ],
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton1Column(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "lbl_our_services".tr,
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(right: 20.h),
          child: BlocSelector<VarFortyoneBloc, VarFortyoneState,
              VarFortyoneModel?>(
            selector: (state) => state.varFortyoneModelObj,
            builder: (context, varFortyoneModelObj) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 89.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.h,
                  crossAxisSpacing: 12.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount:
                    varFortyoneModelObj?.viewhierarchy2ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Viewhierarchy2ItemModel model =
                      varFortyoneModelObj?.viewhierarchy2ItemList[index] ??
                          Viewhierarchy2ItemModel();
                  return Viewhierarchy2ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
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
