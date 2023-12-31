import 'bloc/var_fiftyfour_bloc.dart';
import 'models/var_fiftyfour_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class VarFiftyfourScreen extends StatelessWidget {
  VarFiftyfourScreen({Key? key})
      : super(
          key: key,
        );

  PageController pageController = PageController();

  static Widget builder(BuildContext context) {
    return BlocProvider<VarFiftyfourBloc>(
      create: (context) => VarFiftyfourBloc(VarFiftyfourState(
        varFiftyfourModelObj: VarFiftyfourModel(),
      ))
        ..add(VarFiftyfourInitialEvent()),
      child: VarFiftyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VarFiftyfourBloc, VarFiftyfourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 1),
                  end: Alignment(0.5, -0.01),
                  colors: [
                    appTheme.black90005,
                    appTheme.gray90013,
                  ],
                ),
              ),
              child: SizedBox(
                height: 835.v,
                width: double.maxFinite,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 835.v,
                      child: PageView(
                        controller: pageController,
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 835.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 1),
                                end: Alignment(0.5, -0.01),
                                colors: [
                                  appTheme.black90005,
                                  appTheme.gray90013,
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 835.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          Container(
                            height: 835.v,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1),
                                colors: [
                                  appTheme.black90005,
                                  appTheme.black90005,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 835.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          SizedBox(
                            height: 835.v,
                            child: PageView(
                              controller: pageController,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  children: [
                                    SingleChildScrollView(
                                      child: SizedBox(
                                        height: 835.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                    bottom: 183.v),
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 28.h,
                                                  vertical: 99.v,
                                                ),
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      ImageConstant
                                                          .imageNotFound,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                child: Container(
                                                  width: 275.h,
                                                  margin: EdgeInsets.only(
                                                    top: 112.v,
                                                    right: 62.h,
                                                  ),
                                                  decoration:
                                                      AppDecoration.outlineGray,
                                                  child: Text(
                                                    "msg_explore_a_world".tr,
                                                    maxLines: null,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.displaySmall!
                                                        .copyWith(
                                                      height: 1.24,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                width: 299.h,
                                                margin: EdgeInsets.only(
                                                  left: 28.h,
                                                  bottom: 183.v,
                                                ),
                                                child: Text(
                                                  "msg_browse_our_vast".tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyLargeWhiteA700
                                                      .copyWith(
                                                    height: 1.59,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: 835.v,
                                                width: double.maxFinite,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  children: [
                                                    Opacity(
                                                      opacity: 0.1,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle,
                                                        height: 426.v,
                                                        width: 393.h,
                                                        alignment:
                                                            Alignment.topCenter,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: SizedBox(
                                                        height: 409.v,
                                                        width: double.maxFinite,
                                                        child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Opacity(
                                                              opacity: 0.1,
                                                              child:
                                                                  CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle409x393,
                                                                height: 409.v,
                                                                width: 393.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                            ),
                                                            Opacity(
                                                              opacity: 0.1,
                                                              child:
                                                                  CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage29,
                                                                height: 245.v,
                                                                width: 389.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Opacity(
                                                      opacity: 0.1,
                                                      child: CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgVector533,
                                                        height: 26.v,
                                                        width: 393.h,
                                                        alignment:
                                                            Alignment.center,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse3041157x214,
                                              height: 157.v,
                                              width: 214.h,
                                              alignment: Alignment.topLeft,
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage28,
                                              height: 247.v,
                                              width: 386.h,
                                              alignment: Alignment.topCenter,
                                              margin:
                                                  EdgeInsets.only(top: 188.v),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    32.h, 699.v, 37.h, 64.v),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 72.adaptSize,
                                                      width: 72.adaptSize,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomIconButton(
                                                            height:
                                                                58.adaptSize,
                                                            width: 58.adaptSize,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    19.h),
                                                            decoration:
                                                                IconButtonStyleHelper
                                                                    .outlineWhiteA,
                                                            alignment: Alignment
                                                                .center,
                                                            child:
                                                                CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgArrowRight,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                              height:
                                                                  72.adaptSize,
                                                              width:
                                                                  72.adaptSize,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                value: 0.5,
                                                                strokeWidth:
                                                                    3.h,
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
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 814.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Opacity(
                                        opacity: 0.1,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgImage5277,
                                          height: 253.v,
                                          width: 366.h,
                                          alignment: Alignment.bottomRight,
                                          margin:
                                              EdgeInsets.only(bottom: 147.v),
                                        ),
                                      ),
                                      Opacity(
                                        opacity: 0.9,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse3044,
                                          height: 215.v,
                                          width: 259.h,
                                          alignment: Alignment.topLeft,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 28.h,
                                            vertical: 3.v,
                                          ),
                                          decoration: AppDecoration
                                              .gradientLightBlueToLightBlue,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 275.h,
                                                margin: EdgeInsets.only(
                                                    right: 62.h),
                                                decoration:
                                                    AppDecoration.outlineGray,
                                                child: Text(
                                                  "msg_explore_a_world".tr,
                                                  maxLines: null,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.displaySmall!
                                                      .copyWith(
                                                    height: 1.24,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 299.h,
                                                margin: EdgeInsets.only(
                                                  top: 18.v,
                                                  right: 37.h,
                                                ),
                                                child: Text(
                                                  "msg_browse_our_vast".tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .bodyLargeWhiteA700
                                                      .copyWith(
                                                    height: 1.59,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    4.h, 37.v, 9.h, 49.v),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height: 72.adaptSize,
                                                      width: 72.adaptSize,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomIconButton(
                                                            height:
                                                                58.adaptSize,
                                                            width: 58.adaptSize,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    19.h),
                                                            alignment: Alignment
                                                                .center,
                                                            child:
                                                                CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgClock,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                              height:
                                                                  72.adaptSize,
                                                              width:
                                                                  72.adaptSize,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  36.h,
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: appTheme
                                                                      .red500,
                                                                  width: 3.h,
                                                                  strokeAlign:
                                                                      strokeAlignCenter,
                                                                ),
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
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse3041157x226,
                                        height: 157.v,
                                        width: 226.h,
                                        alignment: Alignment.topLeft,
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Opacity(
                                              opacity: 0.1,
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgVector533,
                                                height: 26.v,
                                                width: 393.h,
                                                margin:
                                                    EdgeInsets.only(top: 111.v),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage5276,
                                        height: 268.v,
                                        width: 369.h,
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(top: 159.v),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 651.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse30411,
                                            height: 157.v,
                                            width: 214.h,
                                            alignment: Alignment.topLeft,
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: 376.v,
                                              width: double.maxFinite,
                                              margin:
                                                  EdgeInsets.only(bottom: 78.v),
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMaskGroup376x393,
                                                    height: 376.v,
                                                    width: 393.h,
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 21.v),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                              height: 13.v,
                                                              width: 23.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          13.h),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: appTheme
                                                                    .indigo200,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  11.h,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 169.v,
                                                            width: double
                                                                .maxFinite,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 73.v),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        136.v,
                                                                    width: double
                                                                        .maxFinite,
                                                                    margin: EdgeInsets.only(
                                                                        top: 12
                                                                            .v),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment(
                                                                            0.5,
                                                                            0),
                                                                        end: Alignment(
                                                                            0.5,
                                                                            1),
                                                                        colors: [
                                                                          appTheme
                                                                              .black90005
                                                                              .withOpacity(0),
                                                                          appTheme
                                                                              .black90005,
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        155.v,
                                                                    width: double
                                                                        .maxFinite,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        begin: Alignment(
                                                                            0.5,
                                                                            0),
                                                                        end: Alignment(
                                                                            0.5,
                                                                            1),
                                                                        colors: [
                                                                          appTheme
                                                                              .black90005
                                                                              .withOpacity(0),
                                                                          appTheme
                                                                              .black90005,
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        275.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 28
                                                                            .h),
                                                                    decoration:
                                                                        AppDecoration
                                                                            .outlineGray,
                                                                    child: Text(
                                                                      "msg_explore_a_world"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style: theme
                                                                          .textTheme
                                                                          .displaySmall!
                                                                          .copyWith(
                                                                        height:
                                                                            1.24,
                                                                      ),
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
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              width: 299.h,
                                              margin:
                                                  EdgeInsets.only(left: 28.h),
                                              child: Text(
                                                "msg_browse_our_vast".tr,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .bodyLargeWhiteA700
                                                    .copyWith(
                                                  height: 1.59,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.maxFinite,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 32.h,
                                        vertical: 37.v,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 72.adaptSize,
                                            width: 72.adaptSize,
                                            margin: EdgeInsets.only(
                                              right: 5.h,
                                              bottom: 14.v,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomIconButton(
                                                  height: 58.adaptSize,
                                                  width: 58.adaptSize,
                                                  padding: EdgeInsets.all(19.h),
                                                  alignment: Alignment.center,
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCheckmarkWhiteA70058x58,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                    height: 72.adaptSize,
                                                    width: 72.adaptSize,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        36.h,
                                                      ),
                                                      border: Border.all(
                                                        color: appTheme.red800,
                                                        width: 1.h,
                                                        strokeAlign:
                                                            strokeAlignCenter,
                                                      ),
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
                              ],
                            ),
                          ),
                          _buildSettingsSection(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSettingsSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 63.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              axisDirection: Axis.horizontal,
              effect: ScrollingDotsEffect(
                spacing: 7,
                activeDotColor: appTheme.whiteA700,
                dotColor: appTheme.gray60002,
                dotHeight: 7.v,
                dotWidth: 7.h,
              ),
              onDotClicked: (value) {
                pageController.jumpToPage(value);
              },
            ),
            SizedBox(
              height: 72.adaptSize,
              width: 72.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomIconButton(
                    height: 58.adaptSize,
                    width: 58.adaptSize,
                    padding: EdgeInsets.all(19.h),
                    decoration: IconButtonStyleHelper.outlineWhiteA,
                    alignment: Alignment.center,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 72.adaptSize,
                      width: 72.adaptSize,
                      child: CircularProgressIndicator(
                        value: 0.5,
                        strokeWidth: 3.h,
                      ),
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
