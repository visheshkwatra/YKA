import '../var_eight_screen/widgets/viewhierarchy1_item_widget.dart';
import 'bloc/var_eight_bloc.dart';
import 'models/var_eight_model.dart';
import 'models/viewhierarchy1_item_model.dart';
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
import 'package:yka_app/widgets/custom_icon_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';
import 'package:yka_app/widgets/custom_search_view.dart';

class VarEightScreen extends StatelessWidget {
  VarEightScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<VarEightBloc>(
      create: (context) => VarEightBloc(VarEightState(
        varEightModelObj: VarEightModel(),
      ))
        ..add(VarEightInitialEvent()),
      child: VarEightScreen(),
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
              _buildSearchAppBar(context),
              SizedBox(height: 22.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 21.h),
                          child: Text(
                            "lbl_my_vehicles".tr,
                            style: CustomTextStyles.titleSmallGray70001,
                          ),
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildMyVehicles(context),
                      SizedBox(height: 23.v),
                      _buildExploreServices(context),
                      SizedBox(height: 16.v),
                      Container(
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
                      SizedBox(height: 28.v),
                      _buildButton1(context),
                      SizedBox(height: 44.v),
                      _buildCheckout(context),
                    ],
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
  Widget _buildSearchAppBar(BuildContext context) {
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
                      BlocSelector<VarEightBloc, VarEightState,
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
                          margin: EdgeInsets.only(right: 38.h),
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
  Widget _buildMyVehicles(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.96, -0.74),
          end: Alignment(0.06, 1.81),
          colors: [
            appTheme.red800,
            appTheme.red800.withOpacity(0),
            appTheme.red800,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 7.v),
          decoration: AppDecoration.outline2.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_7653_tnj".tr,
                          style: CustomTextStyles.bodySmallOpenSansBluegray500,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          "lbl_mustang_coupe2".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    CustomOutlinedButton(
                      height: 29.v,
                      width: 85.h,
                      text: "lbl_selected".tr,
                      margin: EdgeInsets.only(bottom: 10.v),
                      rightIcon: Container(
                        margin: EdgeInsets.only(left: 8.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlineGray,
                      buttonTextStyle:
                          CustomTextStyles.labelMediumWhiteA700SemiBold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                height: 133.v,
                width: 341.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Opacity(
                        opacity: 0.04,
                        child: Text(
                          "lbl_ford2".tr,
                          style: CustomTextStyles.ceraProBlack90005,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage5273108x291,
                      height: 108.v,
                      width: 291.h,
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreServices(BuildContext context) {
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
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 25.v,
                width: 196.h,
                margin: EdgeInsets.only(bottom: 6.v),
                decoration: BoxDecoration(
                  color: appTheme.whiteA700.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(
                    98.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 5.v,
                width: 33.h,
                margin: EdgeInsets.only(
                  right: 1.h,
                  bottom: 15.v,
                ),
                decoration: BoxDecoration(
                  color: appTheme.black90005.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(
                    16.h,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse29401x1,
              height: 1.adaptSize,
              width: 1.adaptSize,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 12.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.img292,
              height: 110.v,
              width: 223.h,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Column(
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
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 68.v,
                        bottom: 3.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: 1.v,
                              width: 10.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5.h,
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(0, 0.57),
                                  end: Alignment(1, 0.57),
                                  colors: [
                                    appTheme.black90005.withOpacity(0.2),
                                    appTheme.black90005.withOpacity(0.08),
                                    appTheme.black90005.withOpacity(0.05),
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
                                  appTheme.black90005.withOpacity(0.2),
                                  appTheme.black90005.withOpacity(0.08),
                                  appTheme.black90005.withOpacity(0.05),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 12.v,
                      width: 99.h,
                      margin: EdgeInsets.only(
                        left: 11.h,
                        top: 66.v,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVector505,
                            height: 5.v,
                            width: 9.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(right: 11.h),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 9.v,
                              width: 99.h,
                              decoration: BoxDecoration(
                                color: appTheme.black90005.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButton1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
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
          BlocSelector<VarEightBloc, VarEightState, VarEightModel?>(
            selector: (state) => state.varEightModelObj,
            builder: (context, varEightModelObj) {
              return GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 89.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.h,
                  crossAxisSpacing: 12.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: varEightModelObj?.viewhierarchy1ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Viewhierarchy1ItemModel model =
                      varEightModelObj?.viewhierarchy1ItemList[index] ??
                          Viewhierarchy1ItemModel();
                  return Viewhierarchy1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCheckout(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 36.v),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
              ),
            ),
          ),
          Container(
            width: 52.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 7.v,
              bottom: 40.v,
            ),
            child: Text(
              "lbl_1_service_added".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeBluegray90004.copyWith(
                height: 1.40,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 38.v),
            child: CustomIconButton(
              height: 46.v,
              width: 44.h,
              padding: EdgeInsets.all(15.h),
              decoration: IconButtonStyleHelper.fillRedA,
              child: CustomImageView(
                imagePath: ImageConstant.imgRecycleBin1,
              ),
            ),
          ),
          CustomElevatedButton(
            height: 46.v,
            width: 141.h,
            text: "lbl_checkout".tr,
            margin: EdgeInsets.only(
              left: 12.h,
              bottom: 38.v,
            ),
            rightIcon: Container(
              margin: EdgeInsets.only(left: 12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgForwardWhiteA700,
                height: 10.adaptSize,
                width: 10.adaptSize,
              ),
            ),
            buttonTextStyle: CustomTextStyles.labelLargeBold,
          ),
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
