import '../var_eleven_tab_container_page/widgets/explorecarscomponent_item_widget.dart';
import '../var_eleven_tab_container_page/widgets/recentlyviewed_item_widget.dart';
import '../var_eleven_tab_container_page/widgets/userprofile1_item_widget.dart';
import '../var_eleven_tab_container_page/widgets/widget2_item_widget.dart';
import 'bloc/var_eleven_tab_container_bloc.dart';
import 'models/explorecarscomponent_item_model.dart';
import 'models/recentlyviewed_item_model.dart';
import 'models/userprofile1_item_model.dart';
import 'models/var_eleven_tab_container_model.dart';
import 'models/widget2_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_image.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:yka_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class VarElevenTabContainerPage extends StatefulWidget {
  const VarElevenTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  VarElevenTabContainerPageState createState() =>
      VarElevenTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<VarElevenTabContainerBloc>(
      create: (context) => VarElevenTabContainerBloc(VarElevenTabContainerState(
        varElevenTabContainerModelObj: VarElevenTabContainerModel(),
      ))
        ..add(VarElevenTabContainerInitialEvent()),
      child: VarElevenTabContainerPage(),
    );
  }
}

class VarElevenTabContainerPageState extends State<VarElevenTabContainerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              _buildSearchFrame(context),
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildExploreServices(context),
                      SizedBox(height: 22.v),
                      _buildPopularBrands(context),
                      SizedBox(height: 30.v),
                      _buildVehicleAppraisal(context),
                      SizedBox(height: 30.v),
                      _buildRecentlyViewed(context),
                      SizedBox(height: 31.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "msg_what_are_you_looking".tr,
                            style: CustomTextStyles.titleSmallGray70001,
                          ),
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildExploreCarsComponent(context),
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
  Widget _buildSearchFrame(BuildContext context) {
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
                      BlocSelector<VarElevenTabContainerBloc,
                          VarElevenTabContainerState, TextEditingController?>(
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
                  imagePath: ImageConstant.imgUserPrimary,
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
  Widget _buildExploreServices(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<VarElevenTabContainerBloc, VarElevenTabContainerState>(
          builder: (context, state) {
            return CarouselSlider.builder(
              options: CarouselOptions(
                height: 110.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  state.sliderIndex = index;
                },
              ),
              itemCount: state.varElevenTabContainerModelObj
                      ?.userprofile1ItemList.length ??
                  0,
              itemBuilder: (context, index, realIndex) {
                Userprofile1ItemModel model = state
                        .varElevenTabContainerModelObj
                        ?.userprofile1ItemList[index] ??
                    Userprofile1ItemModel();
                return Userprofile1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
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
      ],
    );
  }

  /// Section Widget
  Widget _buildPopularBrands(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h),
          child: Text(
            "lbl_popular_brands".tr,
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ),
        SizedBox(height: 11.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 90.v,
            child: BlocSelector<VarElevenTabContainerBloc,
                VarElevenTabContainerState, VarElevenTabContainerModel?>(
              selector: (state) => state.varElevenTabContainerModelObj,
              builder: (context, varElevenTabContainerModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount:
                      varElevenTabContainerModelObj?.widget2ItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    Widget2ItemModel model =
                        varElevenTabContainerModelObj?.widget2ItemList[index] ??
                            Widget2ItemModel();
                    return Widget2ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVehicleAppraisal(BuildContext context) {
    return SizedBox(
      height: 130.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 95.v,
              width: 311.h,
              margin: EdgeInsets.only(top: 12.v),
              decoration: BoxDecoration(
                color: appTheme.black90005,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: AppDecoration.fillGray90001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 130.v,
                    width: 161.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.only(right: 3.h),
                            child: IntrinsicWidth(
                              child: SizedBox(
                                height: 130.v,
                                width: 158.h,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse3038,
                                      height: 220.v,
                                      width: 178.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        height: 134.v,
                                        width: 133.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.whiteA700
                                              .withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(
                                            67.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgEllipse3037,
                                      height: 162.v,
                                      width: 149.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(vertical: 21.v),
                            child: IntrinsicWidth(
                              child: SizedBox(
                                height: 87.v,
                                width: 161.h,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVector503,
                                      height: 28.v,
                                      width: 177.h,
                                      alignment: Alignment.bottomLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        height: 86.v,
                                        width: 181.h,
                                        child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage74,
                                              height: 86.v,
                                              width: 181.h,
                                              alignment: Alignment.center,
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCloseWhiteA70056x94,
                                              height: 56.v,
                                              width: 94.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                top: 7.v,
                                                right: 33.h,
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
                  Padding(
                    padding: EdgeInsets.only(
                      top: 22.v,
                      right: 13.h,
                      bottom: 22.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_want_to_sell_your".tr,
                          style: CustomTextStyles.labelLargeBold13,
                        ),
                        SizedBox(height: 2.v),
                        SizedBox(
                          width: 150.h,
                          child: Text(
                            "msg_fill_a_short_form".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                CustomTextStyles.bodySmallOpenSansWhiteA70010,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        SizedBox(
                          width: 159.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                height: 25.v,
                                width: 103.h,
                                text: "msg_vehicle_appraisal".tr,
                                margin: EdgeInsets.only(top: 2.v),
                                buttonStyle: CustomButtonStyles.fillWhiteATL4,
                                buttonTextStyle:
                                    CustomTextStyles.labelMediumDMSansRed800,
                              ),
                              Container(
                                height: 14.adaptSize,
                                width: 14.adaptSize,
                                margin: EdgeInsets.only(bottom: 13.v),
                                decoration: BoxDecoration(
                                  color: appTheme.blue30033,
                                  borderRadius: BorderRadius.circular(
                                    7.h,
                                  ),
                                ),
                              ),
                            ],
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
    );
  }

  /// Section Widget
  Widget _buildRecentlyViewed(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 256.v,
        child: BlocSelector<VarElevenTabContainerBloc,
            VarElevenTabContainerState, VarElevenTabContainerModel?>(
          selector: (state) => state.varElevenTabContainerModelObj,
          builder: (context, varElevenTabContainerModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 20.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 1.h,
                );
              },
              itemCount: varElevenTabContainerModelObj
                      ?.recentlyviewedItemList.length ??
                  0,
              itemBuilder: (context, index) {
                RecentlyviewedItemModel model = varElevenTabContainerModelObj
                        ?.recentlyviewedItemList[index] ??
                    RecentlyviewedItemModel();
                return RecentlyviewedItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreCarsComponent(BuildContext context) {
    return BlocSelector<VarElevenTabContainerBloc, VarElevenTabContainerState,
        VarElevenTabContainerModel?>(
      selector: (state) => state.varElevenTabContainerModelObj,
      builder: (context, varElevenTabContainerModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: varElevenTabContainerModelObj
                  ?.explorecarscomponentItemList.length ??
              0,
          itemBuilder: (context, index) {
            ExplorecarscomponentItemModel model = varElevenTabContainerModelObj
                    ?.explorecarscomponentItemList[index] ??
                ExplorecarscomponentItemModel();
            return ExplorecarscomponentItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
