import 'bloc/var_eleven_bloc.dart';
import 'models/var_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class VarElevenPage extends StatefulWidget {
  const VarElevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  VarElevenPageState createState() => VarElevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<VarElevenBloc>(
      create: (context) => VarElevenBloc(VarElevenState(
        varElevenModelObj: VarElevenModel(),
      ))
        ..add(VarElevenInitialEvent()),
      child: VarElevenPage(),
    );
  }
}

class VarElevenPageState extends State<VarElevenPage>
    with AutomaticKeepAliveClientMixin<VarElevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VarElevenBloc, VarElevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: _buildScrollView(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Column(
              children: [
                OutlineGradientButton(
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
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 12.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_magnetic_blue".tr,
                                    style: CustomTextStyles
                                        .bodySmallOpenSansBluegray500,
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_mustang_coupe2".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ],
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 14.v,
                                width: 15.h,
                                margin: EdgeInsets.only(
                                  top: 11.v,
                                  bottom: 14.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  bottom: 4.v,
                                ),
                                child: _buildArrowRight(
                                  context,
                                  priceText: "lbl_bhd_500".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.v),
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
                SizedBox(height: 16.v),
                OutlineGradientButton(
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
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 18.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_foggy_black".tr,
                                    style: CustomTextStyles
                                        .bodySmallOpenSansBluegray500,
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_q50".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ],
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 14.v,
                                width: 15.h,
                                margin: EdgeInsets.only(
                                  top: 11.v,
                                  bottom: 14.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  bottom: 4.v,
                                ),
                                child: _buildArrowRight(
                                  context,
                                  priceText: "lbl_bhd_500".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          color: appTheme.indigo5005,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.customBorderBL10,
                          ),
                          child: Container(
                            height: 133.v,
                            width: 345.h,
                            padding: EdgeInsets.symmetric(vertical: 5.v),
                            decoration: AppDecoration.fillIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL10,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBackgroundComplete,
                                  height: 102.v,
                                  width: 209.h,
                                  alignment: Alignment.topLeft,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBackgroundComplete,
                                  height: 102.v,
                                  width: 118.h,
                                  alignment: Alignment.topRight,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup1171275364,
                                  height: 105.v,
                                  width: 162.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 3.v,
                                    right: 79.h,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 45.v,
                                    width: 125.h,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgClipPathGroup,
                                          height: 3.v,
                                          width: 130.h,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgClipPathGroup6x130,
                                          height: 6.v,
                                          width: 130.h,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgClipPathGroupBlack90005,
                                          height: 37.v,
                                          width: 134.h,
                                          alignment: Alignment.topRight,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                            height: 37.v,
                                            width: 134.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgClipPathGroupBlack90005,
                                                  height: 37.v,
                                                  width: 134.h,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 37.v,
                                                    width: 133.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                            height: 26.v,
                                                            width: 131.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        1.v),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClipPathGroupBlack9000526x131,
                                                                  height: 26.v,
                                                                  width: 131.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClipPathGroupBlack900052x55,
                                                                  height: 2.v,
                                                                  width: 55.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 33.h,
                                                                    bottom: 4.v,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5048,
                                                          height: 12.adaptSize,
                                                          width: 12.adaptSize,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 1.v),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: SizedBox(
                                                            height: 19.v,
                                                            width: 115.h,
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClipPathGroupBlack9000519x115,
                                                                  height: 19.v,
                                                                  width: 115.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      SizedBox(
                                                                        height:
                                                                            17.v,
                                                                        width:
                                                                            88.h,
                                                                        child:
                                                                            Stack(
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          children: [
                                                                            CustomImageView(
                                                                              imagePath: ImageConstant.imgClipPathGroupBlack900052x64,
                                                                              height: 2.v,
                                                                              width: 64.h,
                                                                              alignment: Alignment.bottomRight,
                                                                            ),
                                                                            CustomImageView(
                                                                              imagePath: ImageConstant.imgPath5718,
                                                                              height: 17.v,
                                                                              width: 24.h,
                                                                              alignment: Alignment.centerLeft,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgContrastOnprimary,
                                                                        height:
                                                                            16.v,
                                                                        width:
                                                                            23.h,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                1.h),
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
                                                              ImageConstant
                                                                  .imgG5112,
                                                          height: 8.v,
                                                          width: 37.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 2.h,
                                                            top: 11.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgClipPathGroupBlack900052x55,
                                                          height: 13.v,
                                                          width: 21.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 38.h),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5152,
                                                          height: 8.v,
                                                          width: 5.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 7.v),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5174,
                                                          height: 3.v,
                                                          width: 1.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 1.v),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                            height: 9.v,
                                                            width: 123.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 9.v),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClipPathGroupBlack900059x123,
                                                                  height: 9.v,
                                                                  width: 123.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child:
                                                                      Container(
                                                                    height: 2.v,
                                                                    width: 6.h,
                                                                    margin: EdgeInsets.only(
                                                                        right: 50
                                                                            .h),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5308,
                                                                          height:
                                                                              1.v,
                                                                          width:
                                                                              2.h,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5310,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                2.v,
                                                                            width:
                                                                                3.h,
                                                                            child:
                                                                                Stack(
                                                                              alignment: Alignment.topLeft,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  imagePath: ImageConstant.imgPath5312,
                                                                                  height: 2.v,
                                                                                  width: 3.h,
                                                                                  alignment: Alignment.center,
                                                                                ),
                                                                                CustomImageView(
                                                                                  imagePath: ImageConstant.imgG5314,
                                                                                  height: 1.v,
                                                                                  width: 2.h,
                                                                                  alignment: Alignment.topLeft,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5334,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                1.v,
                                                                            width:
                                                                                6.h,
                                                                            child:
                                                                                Stack(
                                                                              alignment: Alignment.bottomCenter,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  imagePath: ImageConstant.imgPath5336,
                                                                                  height: 1.v,
                                                                                  width: 6.h,
                                                                                  alignment: Alignment.center,
                                                                                ),
                                                                                Align(
                                                                                  alignment: Alignment.bottomCenter,
                                                                                  child: SizedBox(
                                                                                    height: 1.v,
                                                                                    width: 6.h,
                                                                                    child: Stack(
                                                                                      alignment: Alignment.center,
                                                                                      children: [
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG5338,
                                                                                          height: 1.v,
                                                                                          width: 6.h,
                                                                                          alignment: Alignment.center,
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.center,
                                                                                          child: SizedBox(
                                                                                            height: 1.v,
                                                                                            width: 6.h,
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomLeft,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgPath5356,
                                                                                                  height: 1.adaptSize,
                                                                                                  width: 1.adaptSize,
                                                                                                  alignment: Alignment.bottomRight,
                                                                                                ),
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgPath5312,
                                                                                                  height: 1.adaptSize,
                                                                                                  width: 1.adaptSize,
                                                                                                  alignment: Alignment.bottomLeft,
                                                                                                ),
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgPath5356,
                                                                                                  height: 1.v,
                                                                                                  width: 6.h,
                                                                                                  alignment: Alignment.bottomRight,
                                                                                                ),
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgPath5356,
                                                                                                  height: 1.v,
                                                                                                  width: 6.h,
                                                                                                  alignment: Alignment.centerRight,
                                                                                                ),
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgPath5364,
                                                                                                  height: 1.adaptSize,
                                                                                                  width: 1.adaptSize,
                                                                                                  alignment: Alignment.bottomRight,
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
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5366,
                                                                          height:
                                                                              1.v,
                                                                          width:
                                                                              2.h,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                          margin:
                                                                              EdgeInsets.only(left: 1.h),
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
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                            height: 6.v,
                                                            width: 10.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 50.h,
                                                              top: 2.v,
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5240,
                                                                  height: 6.v,
                                                                  width: 10.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5260,
                                                                  height: 6.v,
                                                                  width: 10.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                            height: 4.adaptSize,
                                                            width: 4.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 46.h,
                                                              top: 7.v,
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5314,
                                                                  height: 4
                                                                      .adaptSize,
                                                                  width: 4
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath5334,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              2.v,
                                                                          width:
                                                                              3.h,
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                Alignment.bottomLeft,
                                                                            children: [
                                                                              CustomImageView(
                                                                                imagePath: ImageConstant.imgPath5304,
                                                                                height: 2.v,
                                                                                width: 3.h,
                                                                                alignment: Alignment.centerRight,
                                                                              ),
                                                                              CustomImageView(
                                                                                imagePath: ImageConstant.imgPath5334,
                                                                                height: 1.adaptSize,
                                                                                width: 1.adaptSize,
                                                                                alignment: Alignment.bottomLeft,
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
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                            height: 2.v,
                                                            width: 4.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 45.h,
                                                              top: 10.v,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath5368,
                                                                  height: 2.v,
                                                                  width: 4.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                _buildPath(
                                                                  context,
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath5370,
                                                                  imageG: ImageConstant
                                                                      .imgPath5372,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath5334,
                                                          height: 1.v,
                                                          width: 3.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 46.h,
                                                            top: 10.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath5376,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 47.h,
                                                            top: 10.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5378,
                                                          height: 1.v,
                                                          width: 17.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 8.v,
                                                            right: 16.h,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        4.v),
                                                            child: Row(
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5398,
                                                                  height: 3.v,
                                                                  width: 2.h,
                                                                ),
                                                                SizedBox(
                                                                  height: 2.v,
                                                                  width: 1.h,
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      _buildPath(
                                                                        context,
                                                                        imagePath:
                                                                            ImageConstant.imgPath5634,
                                                                        imageG:
                                                                            ImageConstant.imgG5696,
                                                                      ),
                                                                      _buildPath(
                                                                        context,
                                                                        imagePath:
                                                                            ImageConstant.imgPath5652,
                                                                        imageG:
                                                                            ImageConstant.imgG5048,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgG5676,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.topRight,
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
                                                              ImageConstant
                                                                  .imgG5418,
                                                          height: 10.v,
                                                          width: 11.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 50.h,
                                                            top: 1.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5440,
                                                          height: 11.v,
                                                          width: 20.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 36.h),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5462,
                                                          height: 5.v,
                                                          width: 9.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 49.h,
                                                            top: 2.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5484,
                                                          height: 10.v,
                                                          width: 18.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 38.h),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5500,
                                                          height: 11.v,
                                                          width: 17.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 43.h),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                            height: 4.v,
                                                            width: 66.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              top: 8.v,
                                                              right: 16.h,
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgClipPathGroupBlack900054x66,
                                                                  height: 4.v,
                                                                  width: 66.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child:
                                                                      Container(
                                                                    height: 3.v,
                                                                    width: 2.h,
                                                                    margin: EdgeInsets.only(
                                                                        left: 2
                                                                            .h),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG5048,
                                                                          height:
                                                                              3.v,
                                                                          width:
                                                                              2.h,
                                                                          alignment:
                                                                              Alignment.center,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG5590,
                                                                          height:
                                                                              3.v,
                                                                          width:
                                                                              2.h,
                                                                          alignment:
                                                                              Alignment.center,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG5590,
                                                                          height:
                                                                              2.v,
                                                                          width:
                                                                              1.h,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5314,
                                                          height: 4.v,
                                                          width: 2.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 49.h,
                                                            top: 7.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5048,
                                                          height: 1.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 8.v,
                                                            right: 30.h,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath5716,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath7428,
                                                          height: 5.adaptSize,
                                                          width: 5.adaptSize,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 1.h,
                                                            bottom: 13.v,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                            height: 4.v,
                                                            width: 5.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 1.h,
                                                              bottom: 13.v,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7430,
                                                                  height: 4.v,
                                                                  width: 5.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child:
                                                                      SizedBox(
                                                                    height: 4
                                                                        .adaptSize,
                                                                    width: 4
                                                                        .adaptSize,
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7446,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          margin:
                                                                              EdgeInsets.only(left: 1.h),
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7448,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7466,
                                                                          height:
                                                                              3.v,
                                                                          width:
                                                                              1.h,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG5676,
                                                                          height:
                                                                              2.adaptSize,
                                                                          width:
                                                                              2.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          child:
                                                                              Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children: [
                                                                              SizedBox(
                                                                                height: 2.adaptSize,
                                                                                width: 2.adaptSize,
                                                                                child: Stack(
                                                                                  alignment: Alignment.topRight,
                                                                                  children: [
                                                                                    _buildG4(context),
                                                                                    CustomImageView(
                                                                                      imagePath: ImageConstant.imgG7612,
                                                                                      height: 1.adaptSize,
                                                                                      width: 1.adaptSize,
                                                                                      alignment: Alignment.topRight,
                                                                                    ),
                                                                                    _buildPath(
                                                                                      context,
                                                                                      imagePath: ImageConstant.imgG5590,
                                                                                      imageG: ImageConstant.imgPath7680,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              CustomImageView(
                                                                                imagePath: ImageConstant.imgG5048,
                                                                                height: 2.adaptSize,
                                                                                width: 2.adaptSize,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG5590,
                                                                          height:
                                                                              2.v,
                                                                          width:
                                                                              1.h,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG5676,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG5462,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7700,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                          margin:
                                                                              EdgeInsets.only(right: 1.h),
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7700,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7700,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          margin:
                                                                              EdgeInsets.only(left: 1.h),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath7754,
                                                          height: 4.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 14.v),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG7756,
                                                          height: 4.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 14.v),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: 14.v,
                                                              right: 1.h,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7776,
                                                                  height: 2
                                                                      .adaptSize,
                                                                  width: 2
                                                                      .adaptSize,
                                                                ),
                                                                SizedBox(
                                                                  height: 1.v,
                                                                  width: 2.h,
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath7794,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath7796,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath7798,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath7680,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath7802,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath7794,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath7806,
                                                                        height:
                                                                            1.adaptSize,
                                                                        width: 1
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: 3.v,
                                                            right: 55.h,
                                                          ),
                                                          child: _buildG(
                                                            context,
                                                            image1:
                                                                ImageConstant
                                                                    .imgG7808,
                                                            image2:
                                                                ImageConstant
                                                                    .imgG8006,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Container(
                                                            height: 4.v,
                                                            width: 6.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              top: 6.v,
                                                              right: 34.h,
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7826,
                                                                  height: 4.v,
                                                                  width: 6.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  child:
                                                                      SizedBox(
                                                                    height: 3.v,
                                                                    width: 6.h,
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7466,
                                                                          height:
                                                                              3.v,
                                                                          width:
                                                                              1.h,
                                                                          alignment:
                                                                              Alignment.centerLeft,
                                                                          margin:
                                                                              EdgeInsets.only(left: 2.h),
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7826,
                                                                          height:
                                                                              3.v,
                                                                          width:
                                                                              1.h,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7466,
                                                                          height:
                                                                              3.adaptSize,
                                                                          width:
                                                                              3.adaptSize,
                                                                          alignment:
                                                                              Alignment.centerRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgG7970,
                                                                          height:
                                                                              3.v,
                                                                          width:
                                                                              2.h,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG7844,
                                                          height: 6.v,
                                                          width: 4.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 3.v,
                                                            right: 55.h,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5152,
                                                          height: 5.v,
                                                          width: 1.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 5.v,
                                                            right: 59.h,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG7776,
                                                          height: 6.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 3.v,
                                                            right: 55.h,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG7898,
                                                          height: 5.v,
                                                          width: 1.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 4.v,
                                                            right: 58.h,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5112,
                                                          height: 1.v,
                                                          width: 2.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 9.v,
                                                            right: 56.h,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgCloseGray90007,
                                                          height: 24.v,
                                                          width: 42.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 40.h,
                                                            bottom: 1.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath8030,
                                                          height: 1.v,
                                                          width: 4.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            top: 8.v,
                                                            right: 29.h,
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
                                            height: 21.adaptSize,
                                            width: 21.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 11.h,
                                              bottom: 3.v,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5048,
                                                  height: 21.adaptSize,
                                                  width: 21.adaptSize,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5048,
                                                          height: 20.adaptSize,
                                                          width: 20.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: SizedBox(
                                                            height: 17.v,
                                                            width: 18.h,
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath5760,
                                                                  height: 3.v,
                                                                  width: 2.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 5.h,
                                                                    top: 4.v,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child:
                                                                      SizedBox(
                                                                    height: 16
                                                                        .adaptSize,
                                                                    width: 16
                                                                        .adaptSize,
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPlay,
                                                                          height:
                                                                              16.adaptSize,
                                                                          width:
                                                                              16.adaptSize,
                                                                          alignment:
                                                                              Alignment.center,
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                15.adaptSize,
                                                                            width:
                                                                                15.adaptSize,
                                                                            child:
                                                                                Stack(
                                                                              alignment: Alignment.center,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                  height: 15.adaptSize,
                                                                                  width: 15.adaptSize,
                                                                                  alignment: Alignment.center,
                                                                                ),
                                                                                Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: SizedBox(
                                                                                    height: 14.adaptSize,
                                                                                    width: 14.adaptSize,
                                                                                    child: Stack(
                                                                                      alignment: Alignment.topRight,
                                                                                      children: [
                                                                                        _buildG2(context),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(top: 3.v),
                                                                                          child: _buildG3(context),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.bottomRight,
                                                                                          child: Container(
                                                                                            height: 2.v,
                                                                                            width: 5.h,
                                                                                            margin: EdgeInsets.only(bottom: 4.v),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.center,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                  height: 2.v,
                                                                                                  width: 5.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                _buildPath3(context),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 5.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(left: 1.h),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: 4.v),
                                                                                          child: _buildG(
                                                                                            context,
                                                                                            image1: ImageConstant.imgG5378,
                                                                                            image2: ImageConstant.imgPath6024,
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.topLeft,
                                                                                          child: Container(
                                                                                            height: 3.v,
                                                                                            width: 5.h,
                                                                                            margin: EdgeInsets.only(top: 3.v),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomRight,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgG5378,
                                                                                                  height: 3.v,
                                                                                                  width: 5.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                _buildPath2(context),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.topLeft,
                                                                                          child: Padding(
                                                                                            padding: EdgeInsets.only(left: 2.h),
                                                                                            child: Row(
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgG5676,
                                                                                                  height: 4.v,
                                                                                                  width: 3.h,
                                                                                                ),
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgPath6084,
                                                                                                  height: 1.adaptSize,
                                                                                                  width: 1.adaptSize,
                                                                                                  margin: EdgeInsets.only(top: 2.v),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.topCenter,
                                                                                          child: SizedBox(
                                                                                            height: 5.v,
                                                                                            width: 3.h,
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomCenter,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                  height: 5.v,
                                                                                                  width: 3.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.bottomCenter,
                                                                                                  child: SizedBox(
                                                                                                    height: 5.v,
                                                                                                    width: 3.h,
                                                                                                    child: Stack(
                                                                                                      alignment: Alignment.topCenter,
                                                                                                      children: [
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath5978,
                                                                                                          height: 1.v,
                                                                                                          width: 3.h,
                                                                                                          alignment: Alignment.topRight,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                                          height: 1.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.topCenter,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6012,
                                                                                                          height: 1.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.topLeft,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6098,
                                                                                                          height: 5.v,
                                                                                                          width: 1.h,
                                                                                                          alignment: Alignment.centerLeft,
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
                                                                                          alignment: Alignment.topRight,
                                                                                          child: Container(
                                                                                            height: 5.v,
                                                                                            width: 4.h,
                                                                                            margin: EdgeInsets.only(right: 1.h),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.topLeft,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgG5048,
                                                                                                  height: 5.v,
                                                                                                  width: 4.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.topLeft,
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: Alignment.centerRight,
                                                                                                        child: SizedBox(
                                                                                                          height: 1.adaptSize,
                                                                                                          width: 1.adaptSize,
                                                                                                          child: Stack(
                                                                                                            alignment: Alignment.bottomCenter,
                                                                                                            children: [
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6000,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.centerRight,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6024,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.bottomCenter,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6006,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.bottomRight,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      SizedBox(height: 1.v),
                                                                                                      CustomImageView(
                                                                                                        imagePath: ImageConstant.imgPath6016,
                                                                                                        height: 1.adaptSize,
                                                                                                        width: 1.adaptSize,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG5048,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 4.v,
                                                                                            right: 1.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6014,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(left: 2.h),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.bottomRight,
                                                                                          child: Container(
                                                                                            height: 5.adaptSize,
                                                                                            width: 5.adaptSize,
                                                                                            margin: EdgeInsets.only(right: 1.h),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomLeft,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                  height: 5.adaptSize,
                                                                                                  width: 5.adaptSize,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.bottomLeft,
                                                                                                  child: SizedBox(
                                                                                                    height: 5.v,
                                                                                                    width: 4.h,
                                                                                                    child: Stack(
                                                                                                      alignment: Alignment.centerLeft,
                                                                                                      children: [
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath5978,
                                                                                                          height: 3.v,
                                                                                                          width: 4.h,
                                                                                                          alignment: Alignment.topRight,
                                                                                                        ),
                                                                                                        _buildPath4(
                                                                                                          context,
                                                                                                          image1: ImageConstant.imgPath6046,
                                                                                                          image2: ImageConstant.imgPath6078,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6000,
                                                                                                          height: 1.adaptSize,
                                                                                                          width: 1.adaptSize,
                                                                                                          alignment: Alignment.bottomRight,
                                                                                                          margin: EdgeInsets.only(right: 1.h),
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                                          height: 1.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.bottomRight,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6382,
                                                                                                          height: 1.adaptSize,
                                                                                                          width: 1.adaptSize,
                                                                                                          alignment: Alignment.centerLeft,
                                                                                                          margin: EdgeInsets.only(left: 1.h),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6016,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(right: 5.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6054,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            right: 6.h,
                                                                                            bottom: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6382,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6058,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6060,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(left: 1.h),
                                                                                          child: _buildPath5(context),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath5980,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6080,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 5.v,
                                                                                            right: 2.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6054,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 3.h,
                                                                                            top: 5.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6090,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6092,
                                                                                          height: 3.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(top: 3.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6094,
                                                                                          height: 4.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 1.v,
                                                                                            right: 2.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6096,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(right: 5.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6046,
                                                                                          height: 4.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(left: 3.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6102,
                                                                                          height: 3.adaptSize,
                                                                                          width: 3.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6014,
                                                                                          height: 2.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            top: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6106,
                                                                                          height: 1.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(top: 6.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6016,
                                                                                          height: 2.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6110,
                                                                                          height: 1.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 5.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6112,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 3.h,
                                                                                            bottom: 4.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6114,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            right: 6.h,
                                                                                            bottom: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6102,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(top: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6120,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG5048,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.centerRight,
                                                                                          margin: EdgeInsets.only(right: 4.h),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(top: 5.v),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            left: 5.h,
                                                                                            bottom: 4.v,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            right: 5.h,
                                                                                            bottom: 4.v,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6350,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(right: 4.h),
                                                                                          child: _buildPath(
                                                                                            context,
                                                                                            imagePath: ImageConstant.imgG6270,
                                                                                            imageG: ImageConstant.imgG5048,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6384,
                                                                                          height: 3.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            top: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 1.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(bottom: 6.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG8006,
                                                                                          height: 5.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(right: 4.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6384,
                                                                                          height: 3.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            bottom: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6448,
                                                                                          height: 5.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(right: 4.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 3.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 1.v,
                                                                                            right: 1.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG8006,
                                                                                          height: 5.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(left: 3.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6496,
                                                                                          height: 1.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 5.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(left: 5.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 3.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(bottom: 2.v),
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
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG6544,
                                                                  height: 12.v,
                                                                  width: 6.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
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
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 21.v,
                                            width: 22.h,
                                            margin: EdgeInsets.only(
                                              right: 3.h,
                                              bottom: 2.v,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5048,
                                                  height: 21.v,
                                                  width: 22.h,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 19.v,
                                                    width: 20.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5048,
                                                          height: 19.v,
                                                          width: 20.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: SizedBox(
                                                            height: 17.v,
                                                            width: 18.h,
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath5760,
                                                                  height: 2
                                                                      .adaptSize,
                                                                  width: 2
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 5.h,
                                                                    top: 4.v,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child:
                                                                      SizedBox(
                                                                    height:
                                                                        15.v,
                                                                    width: 16.h,
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPlay,
                                                                          height:
                                                                              15.v,
                                                                          width:
                                                                              16.h,
                                                                          alignment:
                                                                              Alignment.center,
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                15.v,
                                                                            width:
                                                                                16.h,
                                                                            child:
                                                                                Stack(
                                                                              alignment: Alignment.centerLeft,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                  height: 15.v,
                                                                                  width: 16.h,
                                                                                  alignment: Alignment.center,
                                                                                ),
                                                                                Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: SizedBox(
                                                                                    height: 14.adaptSize,
                                                                                    width: 14.adaptSize,
                                                                                    child: Stack(
                                                                                      alignment: Alignment.topRight,
                                                                                      children: [
                                                                                        _buildG2(context),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(top: 3.v),
                                                                                          child: _buildG3(context),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 2.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 5.adaptSize,
                                                                                          width: 5.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(left: 1.h),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: 4.v),
                                                                                          child: _buildG(
                                                                                            context,
                                                                                            image1: ImageConstant.imgG5378,
                                                                                            image2: ImageConstant.imgPath6024,
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.topLeft,
                                                                                          child: Container(
                                                                                            height: 3.v,
                                                                                            width: 6.h,
                                                                                            margin: EdgeInsets.only(top: 3.v),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomLeft,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgG5378,
                                                                                                  height: 3.v,
                                                                                                  width: 6.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                _buildPath2(context),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(left: 2.h),
                                                                                          child: _buildPath6(
                                                                                            context,
                                                                                            image1: ImageConstant.imgG5676,
                                                                                            image2: ImageConstant.imgPath6084,
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.topCenter,
                                                                                          child: SizedBox(
                                                                                            height: 5.v,
                                                                                            width: 3.h,
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomCenter,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                  height: 5.v,
                                                                                                  width: 3.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.bottomCenter,
                                                                                                  child: SizedBox(
                                                                                                    height: 5.v,
                                                                                                    width: 3.h,
                                                                                                    child: Stack(
                                                                                                      alignment: Alignment.topCenter,
                                                                                                      children: [
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath5978,
                                                                                                          height: 1.v,
                                                                                                          width: 3.h,
                                                                                                          alignment: Alignment.topRight,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                                          height: 1.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.topCenter,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6012,
                                                                                                          height: 1.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.topLeft,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6932,
                                                                                                          height: 1.adaptSize,
                                                                                                          width: 1.adaptSize,
                                                                                                          alignment: Alignment.bottomLeft,
                                                                                                          margin: EdgeInsets.only(bottom: 1.v),
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6098,
                                                                                                          height: 5.v,
                                                                                                          width: 1.h,
                                                                                                          alignment: Alignment.centerLeft,
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
                                                                                          alignment: Alignment.topRight,
                                                                                          child: Container(
                                                                                            height: 4.adaptSize,
                                                                                            width: 4.adaptSize,
                                                                                            margin: EdgeInsets.only(right: 1.h),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomLeft,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgG5048,
                                                                                                  height: 4.adaptSize,
                                                                                                  width: 4.adaptSize,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.bottomLeft,
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: Alignment.centerRight,
                                                                                                        child: SizedBox(
                                                                                                          height: 1.adaptSize,
                                                                                                          width: 1.adaptSize,
                                                                                                          child: Stack(
                                                                                                            alignment: Alignment.bottomCenter,
                                                                                                            children: [
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6000,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.centerRight,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgG5048,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.bottomCenter,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6850,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.bottomRight,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6006,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.bottomRight,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      SizedBox(height: 1.v),
                                                                                                      _buildPath1(
                                                                                                        context,
                                                                                                        image1: ImageConstant.imgPath6016,
                                                                                                        image2: ImageConstant.imgPath6932,
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6824,
                                                                                          height: 2.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(top: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 4.v,
                                                                                            right: 1.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6014,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(left: 2.h),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: 4.v),
                                                                                          child: _buildPath3(context),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.bottomRight,
                                                                                          child: Container(
                                                                                            height: 5.adaptSize,
                                                                                            width: 5.adaptSize,
                                                                                            margin: EdgeInsets.only(right: 1.h),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.bottomCenter,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                  height: 5.adaptSize,
                                                                                                  width: 5.adaptSize,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.bottomCenter,
                                                                                                  child: SizedBox(
                                                                                                    height: 5.adaptSize,
                                                                                                    width: 5.adaptSize,
                                                                                                    child: Stack(
                                                                                                      alignment: Alignment.centerLeft,
                                                                                                      children: [
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath5978,
                                                                                                          height: 3.v,
                                                                                                          width: 4.h,
                                                                                                          alignment: Alignment.topRight,
                                                                                                        ),
                                                                                                        _buildPath4(
                                                                                                          context,
                                                                                                          image1: ImageConstant.imgPath6046,
                                                                                                          image2: ImageConstant.imgPath6078,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6000,
                                                                                                          height: 1.adaptSize,
                                                                                                          width: 1.adaptSize,
                                                                                                          alignment: Alignment.bottomCenter,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                                          height: 1.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.bottomRight,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6382,
                                                                                                          height: 1.adaptSize,
                                                                                                          width: 1.adaptSize,
                                                                                                          alignment: Alignment.centerLeft,
                                                                                                          margin: EdgeInsets.only(left: 1.h),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6016,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(right: 5.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6054,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            right: 6.h,
                                                                                            bottom: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6382,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6058,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6060,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(left: 1.h),
                                                                                          child: _buildPath5(context),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath5980,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6080,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 5.v,
                                                                                            right: 2.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath5760,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 5.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6054,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 3.h,
                                                                                            top: 5.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6090,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6092,
                                                                                          height: 3.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(top: 3.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6094,
                                                                                          height: 4.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 1.v,
                                                                                            right: 2.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6096,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(right: 5.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6046,
                                                                                          height: 4.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(left: 3.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6102,
                                                                                          height: 3.adaptSize,
                                                                                          width: 3.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6014,
                                                                                          height: 2.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            top: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6106,
                                                                                          height: 1.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(top: 5.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6016,
                                                                                          height: 2.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6110,
                                                                                          height: 1.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 5.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6112,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 3.h,
                                                                                            bottom: 5.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6966,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 4.h,
                                                                                            bottom: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6114,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            right: 6.h,
                                                                                            bottom: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6102,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(top: 4.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6120,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(bottom: 4.v),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            top: 6.v,
                                                                                            right: 4.h,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            top: 4.v,
                                                                                            right: 6.h,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            left: 5.h,
                                                                                            bottom: 4.v,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            right: 5.h,
                                                                                            bottom: 4.v,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6350,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6384,
                                                                                          height: 3.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            top: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 1.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.centerRight,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG8006,
                                                                                          height: 5.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(right: 4.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6384,
                                                                                          height: 3.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            bottom: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6448,
                                                                                          height: 5.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(right: 4.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 3.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 1.v,
                                                                                            right: 1.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG8006,
                                                                                          height: 4.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(left: 3.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6496,
                                                                                          height: 1.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 5.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 5.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(left: 5.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 3.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(bottom: 3.v),
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
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG6544,
                                                                  height: 12.v,
                                                                  width: 6.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
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
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath8026,
                                          height: 2.v,
                                          width: 7.h,
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(
                                            left: 4.h,
                                            bottom: 20.v,
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCloseGray900077x11,
                                          height: 7.v,
                                          width: 11.h,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(top: 15.v),
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
                SizedBox(height: 16.v),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  color: appTheme.whiteA700,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.h,
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Container(
                    height: 207.v,
                    width: 353.h,
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Opacity(
                            opacity: 0.04,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                bottom: 48.v,
                              ),
                              child: Text(
                                "lbl_infiniti2".tr,
                                style: CustomTextStyles.ceraProBlack90005,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage42145x317,
                          height: 145.v,
                          width: 317.h,
                          alignment: Alignment.bottomRight,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding:
                                EdgeInsets.fromLTRB(20.h, 22.v, 20.h, 144.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_midnight_black".tr,
                                      style: CustomTextStyles
                                          .bodySmallOpenSansBluegray500,
                                    ),
                                    SizedBox(height: 1.v),
                                    Text(
                                      "lbl_q50_sensory".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                CustomImageView(
                                  imagePath: ImageConstant.imgTelevision,
                                  height: 14.v,
                                  width: 15.h,
                                  margin: EdgeInsets.only(
                                    top: 11.v,
                                    bottom: 14.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 24.h,
                                    bottom: 4.v,
                                  ),
                                  child: _buildArrowRight(
                                    context,
                                    priceText: "lbl_bhd_500".tr,
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
                SizedBox(height: 16.v),
                OutlineGradientButton(
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
                    padding: EdgeInsets.all(3.h),
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 18.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_foggy_black".tr,
                                    style: CustomTextStyles
                                        .bodySmallOpenSansBluegray500,
                                  ),
                                  Text(
                                    "lbl_nissan_gtr".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ],
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 14.v,
                                width: 15.h,
                                margin: EdgeInsets.only(
                                  top: 11.v,
                                  bottom: 12.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  bottom: 2.v,
                                ),
                                child: _buildArrowRight(
                                  context,
                                  priceText: "lbl_bhd_500".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          color: appTheme.indigo5005,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.customBorderBL10,
                          ),
                          child: Container(
                            height: 133.v,
                            width: 345.h,
                            padding: EdgeInsets.symmetric(vertical: 5.v),
                            decoration: AppDecoration.fillIndigo.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL10,
                            ),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBackgroundComplete,
                                  height: 102.v,
                                  width: 209.h,
                                  alignment: Alignment.topLeft,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgBackgroundComplete,
                                  height: 102.v,
                                  width: 118.h,
                                  alignment: Alignment.topRight,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 85.v,
                                    width: 223.h,
                                    margin: EdgeInsets.only(bottom: 1.v),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgClipPathGroup,
                                          height: 7.v,
                                          width: 246.h,
                                          alignment: Alignment.bottomRight,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgClipPathGroup6x130,
                                          height: 12.v,
                                          width: 246.h,
                                          alignment: Alignment.bottomRight,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgClipPathGroupBlack90005,
                                          height: 71.v,
                                          width: 245.h,
                                          alignment: Alignment.topRight,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: SizedBox(
                                            height: 71.v,
                                            width: 252.h,
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgClipPathGroupBlack90005,
                                                  height: 71.v,
                                                  width: 245.h,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    height: 50.v,
                                                    width: 242.h,
                                                    margin: EdgeInsets.only(
                                                        bottom: 2.v),
                                                    padding: EdgeInsets.only(
                                                      left: 63.h,
                                                      top: 10.v,
                                                      bottom: 10.v,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          ImageConstant
                                                              .imgClipPathGroupBlack9000526x131,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgClipPathGroupBlack900052x55,
                                                      height: 4.v,
                                                      width: 105.h,
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: SizedBox(
                                                    height: 36.v,
                                                    width: 218.h,
                                                    child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgClipPathGroupBlack9000519x115,
                                                          height: 36.v,
                                                          width: 218.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              SizedBox(
                                                                height: 33.v,
                                                                width: 168.h,
                                                                child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgClipPathGroupBlack900052x64,
                                                                      height:
                                                                          4.v,
                                                                      width:
                                                                          121.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                    ),
                                                                    CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgPath5718,
                                                                      height:
                                                                          33.v,
                                                                      width:
                                                                          46.h,
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgContrastOnprimary,
                                                                height: 30.v,
                                                                width: 45.h,
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
                                                      ImageConstant.imgG5112,
                                                  height: 16.v,
                                                  width: 71.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 5.h,
                                                    top: 21.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgClipPathGroupBlack900052x55,
                                                  height: 26.v,
                                                  width: 40.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 72.h),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5152,
                                                  height: 15.v,
                                                  width: 9.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      bottom: 15.v),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5174,
                                                  height: 7.v,
                                                  width: 3.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                      bottom: 2.v),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 18.v,
                                                    width: 237.h,
                                                    margin: EdgeInsets.only(
                                                      top: 18.v,
                                                      right: 1.h,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgClipPathGroupBlack900059x123,
                                                          height: 17.v,
                                                          width: 231.h,
                                                          alignment: Alignment
                                                              .topCenter,
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPath5308Red900,
                                                          height: 2.v,
                                                          width: 4.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 99.h,
                                                            bottom: 1.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPath5310Red900,
                                                          height: 2.v,
                                                          width: 3.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 107.h,
                                                            bottom: 2.v,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                            height: 4.v,
                                                            width: 6.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              right: 102.h,
                                                              bottom: 2.v,
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath5312Red90001,
                                                                  height: 4.v,
                                                                  width: 6.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5314,
                                                                  height: 3.v,
                                                                  width: 5.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPath5334Red90001,
                                                          height: 1.adaptSize,
                                                          width: 1.adaptSize,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 101.h,
                                                            bottom: 2.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPath5336Red900,
                                                          height: 2.v,
                                                          width: 12.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 98.h,
                                                            bottom: 3.v,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                            height: 1.v,
                                                            width: 12.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              right: 98.h,
                                                              bottom: 3.v,
                                                            ),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5338,
                                                                  height: 1.v,
                                                                  width: 12.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                  child:
                                                                      SizedBox(
                                                                    height: 1.v,
                                                                    width: 12.h,
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomLeft,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5356Red90001,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5312Red90001,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomLeft,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5356Red90001,
                                                                          height:
                                                                              1.v,
                                                                          width:
                                                                              11.h,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5356Red90001,
                                                                          height:
                                                                              1.v,
                                                                          width:
                                                                              11.h,
                                                                          alignment:
                                                                              Alignment.center,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath5364,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                          margin:
                                                                              EdgeInsets.only(right: 2.h),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPath5366Red900,
                                                          height: 1.v,
                                                          width: 4.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 103.h,
                                                            bottom: 1.v,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgUserGray90009,
                                                          height: 9.v,
                                                          width: 6.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG7756,
                                                          height: 8.v,
                                                          width: 6.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                            height: 4.v,
                                                            width: 5.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        4.v),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7776,
                                                                  height: 4.v,
                                                                  width: 5.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child:
                                                                      SizedBox(
                                                                    height: 2.v,
                                                                    width: 4.h,
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topLeft,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7794,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7796,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7798,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7680,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topLeft,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7802,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.bottomRight,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7794,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                        ),
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPath7806,
                                                                          height:
                                                                              1.adaptSize,
                                                                          width:
                                                                              1.adaptSize,
                                                                          alignment:
                                                                              Alignment.topRight,
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
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    height: 12.v,
                                                    width: 19.h,
                                                    margin: EdgeInsets.only(
                                                      left: 96.h,
                                                      top: 4.v,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5240,
                                                          height: 12.v,
                                                          width: 19.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5260,
                                                          height: 12.v,
                                                          width: 19.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    height: 8.adaptSize,
                                                    width: 8.adaptSize,
                                                    margin: EdgeInsets.only(
                                                      left: 88.h,
                                                      top: 13.v,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5314,
                                                          height: 8.adaptSize,
                                                          width: 8.adaptSize,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPath5334Red90001,
                                                                height: 1.v,
                                                                width: 3.h,
                                                                alignment: Alignment
                                                                    .centerRight,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: SizedBox(
                                                                  height: 4.v,
                                                                  width: 6.h,
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath5304Red90001,
                                                                        height:
                                                                            4.v,
                                                                        width:
                                                                            6.h,
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                      ),
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPath5334Red90001,
                                                                        height:
                                                                            2.v,
                                                                        width:
                                                                            1.h,
                                                                        alignment:
                                                                            Alignment.bottomLeft,
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
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    height: 4.v,
                                                    width: 7.h,
                                                    margin: EdgeInsets.only(
                                                      left: 87.h,
                                                      top: 20.v,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgPath5368Red900,
                                                          height: 4.v,
                                                          width: 7.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Row(
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPath5370Red90001,
                                                                height:
                                                                    3.adaptSize,
                                                                width:
                                                                    3.adaptSize,
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPath5372Red900,
                                                                height: 3.v,
                                                                width: 2.h,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPath5334Red90001,
                                                  height: 1.v,
                                                  width: 7.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 88.h,
                                                    top: 19.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgPath5376Red90001,
                                                  height: 2.v,
                                                  width: 1.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 89.h,
                                                    top: 19.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5378,
                                                  height: 3.v,
                                                  width: 32.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 15.v,
                                                    right: 32.h,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      top: 55.v,
                                                      bottom: 9.v,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height: 6.v,
                                                          width: 4.h,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            children: [
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgG5398,
                                                                height: 6.v,
                                                                width: 4.h,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPath5634,
                                                                height: 4.v,
                                                                width: 2.h,
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 1
                                                                            .h),
                                                                child:
                                                                    _buildPath(
                                                                  context,
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath5652,
                                                                  imageG: ImageConstant
                                                                      .imgG5048,
                                                                ),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgG5676,
                                                                height: 1.v,
                                                                width: 2.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 1
                                                                            .v),
                                                              ),
                                                              CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgG5696,
                                                                height:
                                                                    1.adaptSize,
                                                                width:
                                                                    1.adaptSize,
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        bottom:
                                                                            1.v),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath5716,
                                                          height: 2.v,
                                                          width: 1.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 2.v),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5418,
                                                  height: 20.v,
                                                  width: 21.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 95.h,
                                                    top: 2.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5440,
                                                  height: 21.v,
                                                  width: 38.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 69.h,
                                                    top: 1.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5462,
                                                  height: 10.v,
                                                  width: 17.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 94.h,
                                                    top: 4.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5484,
                                                  height: 20.v,
                                                  width: 35.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 72.h,
                                                    top: 1.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5500,
                                                  height: 21.v,
                                                  width: 33.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                      left: 81.h),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 7.v,
                                                    width: 125.h,
                                                    margin: EdgeInsets.only(
                                                      top: 16.v,
                                                      right: 31.h,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgClipPathGroupBlack900054x66,
                                                          height: 7.v,
                                                          width: 125.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                            height: 6.v,
                                                            width: 4.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 5.h),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5048,
                                                                  height: 5.v,
                                                                  width: 4.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5590,
                                                                  height: 6.v,
                                                                  width: 4.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5590,
                                                                  height: 4.v,
                                                                  width: 2.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5314,
                                                  height: 8.v,
                                                  width: 4.h,
                                                  alignment: Alignment.topLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 93.h,
                                                    top: 13.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5048,
                                                  height: 3.v,
                                                  width: 6.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 15.v,
                                                    right: 58.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgSettingsBlack90004,
                                                  height: 9.v,
                                                  width: 10.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 3.h,
                                                    bottom: 26.v,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                    height: 9.v,
                                                    width: 10.h,
                                                    margin: EdgeInsets.only(
                                                      left: 3.h,
                                                      bottom: 25.v,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG7430,
                                                          height: 9.v,
                                                          width: 10.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: SizedBox(
                                                            height: 8.adaptSize,
                                                            width: 8.adaptSize,
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath7446,
                                                                  height: 1
                                                                      .adaptSize,
                                                                  width: 1
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              2.h),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7448,
                                                                  height: 1
                                                                      .adaptSize,
                                                                  width: 1
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 1.h,
                                                                    top: 1.v,
                                                                  ),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7466,
                                                                  height: 5.v,
                                                                  width: 2.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5676,
                                                                  height: 4.v,
                                                                  width: 5.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom:
                                                                              1.v),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5048,
                                                                  height: 4.v,
                                                                  width: 5.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              3.h),
                                                                  child: _buildG4(
                                                                      context),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5590,
                                                                  height: 5.v,
                                                                  width: 1.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7612,
                                                                  height: 1.v,
                                                                  width: 3.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    top: 2.v,
                                                                    right: 2.h,
                                                                  ),
                                                                  child:
                                                                      _buildPath4(
                                                                    context,
                                                                    image1: ImageConstant
                                                                        .imgG5590,
                                                                    image2: ImageConstant
                                                                        .imgPath7680,
                                                                  ),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5676,
                                                                  height: 1.v,
                                                                  width: 2.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5462,
                                                                  height: 1
                                                                      .adaptSize,
                                                                  width: 1
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              2.h),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7700,
                                                                  height: 1
                                                                      .adaptSize,
                                                                  width: 1
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              3.h),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7700,
                                                                  height: 1
                                                                      .adaptSize,
                                                                  width: 1
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              2.h),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7700,
                                                                  height: 1
                                                                      .adaptSize,
                                                                  width: 1
                                                                      .adaptSize,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 2.h,
                                                                    top: 1.v,
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
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 6.v,
                                                    right: 103.h,
                                                  ),
                                                  child: _buildG5(
                                                    context,
                                                    image1:
                                                        ImageConstant.imgG7808,
                                                    image2:
                                                        ImageConstant.imgG8006,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 8.v,
                                                    width: 12.h,
                                                    margin: EdgeInsets.only(
                                                      top: 11.v,
                                                      right: 64.h,
                                                    ),
                                                    child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG7826,
                                                          height: 8.v,
                                                          width: 12.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: SizedBox(
                                                            height: 7.v,
                                                            width: 12.h,
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7466,
                                                                  height: 7.v,
                                                                  width: 2.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              4.h),
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7826,
                                                                  height: 6.v,
                                                                  width: 3.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7466,
                                                                  height: 7.v,
                                                                  width: 6.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                ),
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG7970,
                                                                  height: 6.v,
                                                                  width: 3.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomLeft,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left:
                                                                              1.h),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG7844,
                                                  height: 12.v,
                                                  width: 8.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 7.v,
                                                    right: 104.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5152,
                                                  height: 9.v,
                                                  width: 2.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 9.v,
                                                    right: 111.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG7776,
                                                  height: 12.v,
                                                  width: 7.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 6.v,
                                                    right: 104.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG7898,
                                                  height: 9.v,
                                                  width: 3.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 9.v,
                                                    right: 109.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5112,
                                                  height: 1.v,
                                                  width: 5.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 18.v,
                                                    right: 105.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCloseGray90007,
                                                  height: 45.v,
                                                  width: 81.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 76.h,
                                                    bottom: 4.v,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPath8030,
                                                  height: 3.v,
                                                  width: 9.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 15.v,
                                                    right: 54.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 41.v,
                                            width: 232.h,
                                            margin:
                                                EdgeInsets.only(bottom: 5.v),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5048,
                                                  height: 41.adaptSize,
                                                  width: 41.adaptSize,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 38.v,
                                                    width: 231.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5048,
                                                          height: 38.adaptSize,
                                                          width: 38.adaptSize,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPath5760,
                                                          height: 5.v,
                                                          width: 4.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 11.h,
                                                            top: 9.v,
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              left: 4.h,
                                                              top: 4.v,
                                                              bottom: 3.v,
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  height: 30
                                                                      .adaptSize,
                                                                  width: 30
                                                                      .adaptSize,
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant.imgPlay,
                                                                        height:
                                                                            30.adaptSize,
                                                                        width: 30
                                                                            .adaptSize,
                                                                        alignment:
                                                                            Alignment.center,
                                                                      ),
                                                                      Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              29.v,
                                                                          width:
                                                                              30.h,
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            children: [
                                                                              CustomImageView(
                                                                                imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                height: 29.v,
                                                                                width: 30.h,
                                                                                alignment: Alignment.center,
                                                                              ),
                                                                              Align(
                                                                                alignment: Alignment.center,
                                                                                child: SizedBox(
                                                                                  height: 27.v,
                                                                                  width: 28.h,
                                                                                  child: Stack(
                                                                                    alignment: Alignment.topRight,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(left: 11.h),
                                                                                        child: _buildG6(context),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(top: 6.v),
                                                                                        child: _buildG7(context),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: Alignment.bottomRight,
                                                                                        child: Container(
                                                                                          height: 5.v,
                                                                                          width: 10.h,
                                                                                          margin: EdgeInsets.only(bottom: 7.v),
                                                                                          child: Stack(
                                                                                            alignment: Alignment.center,
                                                                                            children: [
                                                                                              CustomImageView(
                                                                                                imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                height: 5.v,
                                                                                                width: 10.h,
                                                                                                alignment: Alignment.center,
                                                                                              ),
                                                                                              _buildPath7(context),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                        height: 10.v,
                                                                                        width: 3.h,
                                                                                        alignment: Alignment.bottomCenter,
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                        height: 11.v,
                                                                                        width: 9.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(left: 3.h),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(bottom: 7.v),
                                                                                        child: _buildG5(
                                                                                          context,
                                                                                          image1: ImageConstant.imgG5378,
                                                                                          image2: ImageConstant.imgPath6024,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(top: 6.v),
                                                                                        child: _buildG8(context),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 4.h,
                                                                                          top: 1.v,
                                                                                        ),
                                                                                        child: _buildG9(context),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: Alignment.topCenter,
                                                                                        child: SizedBox(
                                                                                          height: 11.v,
                                                                                          width: 6.h,
                                                                                          child: Stack(
                                                                                            alignment: Alignment.topCenter,
                                                                                            children: [
                                                                                              CustomImageView(
                                                                                                imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                height: 11.v,
                                                                                                width: 6.h,
                                                                                                alignment: Alignment.center,
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: Alignment.topCenter,
                                                                                                child: SizedBox(
                                                                                                  height: 9.v,
                                                                                                  width: 6.h,
                                                                                                  child: Stack(
                                                                                                    alignment: Alignment.topLeft,
                                                                                                    children: [
                                                                                                      CustomImageView(
                                                                                                        imagePath: ImageConstant.imgPath5978,
                                                                                                        height: 1.v,
                                                                                                        width: 5.h,
                                                                                                        alignment: Alignment.topLeft,
                                                                                                      ),
                                                                                                      CustomImageView(
                                                                                                        imagePath: ImageConstant.imgPath6024,
                                                                                                        height: 1.v,
                                                                                                        width: 3.h,
                                                                                                        alignment: Alignment.topLeft,
                                                                                                        margin: EdgeInsets.only(top: 1.v),
                                                                                                      ),
                                                                                                      CustomImageView(
                                                                                                        imagePath: ImageConstant.imgPath6012,
                                                                                                        height: 1.v,
                                                                                                        width: 3.h,
                                                                                                        alignment: Alignment.topLeft,
                                                                                                      ),
                                                                                                      CustomImageView(
                                                                                                        imagePath: ImageConstant.imgPath6098,
                                                                                                        height: 9.v,
                                                                                                        width: 2.h,
                                                                                                        alignment: Alignment.centerLeft,
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
                                                                                        alignment: Alignment.topRight,
                                                                                        child: Container(
                                                                                          height: 9.v,
                                                                                          width: 7.h,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 1.v,
                                                                                            right: 5.h,
                                                                                          ),
                                                                                          child: Stack(
                                                                                            alignment: Alignment.bottomLeft,
                                                                                            children: [
                                                                                              CustomImageView(
                                                                                                imagePath: ImageConstant.imgG5048,
                                                                                                height: 9.v,
                                                                                                width: 7.h,
                                                                                                alignment: Alignment.center,
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: Alignment.bottomLeft,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Align(
                                                                                                      alignment: Alignment.centerRight,
                                                                                                      child: SizedBox(
                                                                                                        height: 3.adaptSize,
                                                                                                        width: 3.adaptSize,
                                                                                                        child: Stack(
                                                                                                          alignment: Alignment.bottomLeft,
                                                                                                          children: [
                                                                                                            CustomImageView(
                                                                                                              imagePath: ImageConstant.imgPath6000,
                                                                                                              height: 1.v,
                                                                                                              width: 2.h,
                                                                                                              alignment: Alignment.topRight,
                                                                                                            ),
                                                                                                            CustomImageView(
                                                                                                              imagePath: ImageConstant.imgPath6024,
                                                                                                              height: 2.adaptSize,
                                                                                                              width: 2.adaptSize,
                                                                                                              alignment: Alignment.bottomLeft,
                                                                                                            ),
                                                                                                            CustomImageView(
                                                                                                              imagePath: ImageConstant.imgPath6006,
                                                                                                              height: 1.adaptSize,
                                                                                                              width: 1.adaptSize,
                                                                                                              alignment: Alignment.center,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    SizedBox(height: 2.v),
                                                                                                    CustomImageView(
                                                                                                      imagePath: ImageConstant.imgPath6016,
                                                                                                      height: 3.v,
                                                                                                      width: 1.h,
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG5048,
                                                                                        height: 3.v,
                                                                                        width: 1.h,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          top: 8.v,
                                                                                          right: 4.h,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6014,
                                                                                        height: 2.adaptSize,
                                                                                        width: 2.adaptSize,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 4.h,
                                                                                          top: 1.v,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(right: 4.h),
                                                                                        child: _buildG10(context),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6016,
                                                                                        height: 10.v,
                                                                                        width: 2.h,
                                                                                        alignment: Alignment.bottomCenter,
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6054,
                                                                                        height: 2.v,
                                                                                        width: 1.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 13.h,
                                                                                          bottom: 7.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6382,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 12.h,
                                                                                          bottom: 2.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6058,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(left: 12.h),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6060,
                                                                                        height: 1.v,
                                                                                        width: 3.h,
                                                                                        alignment: Alignment.bottomCenter,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(left: 3.h),
                                                                                        child: _buildSave(context),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6024,
                                                                                        height: 2.v,
                                                                                        width: 1.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 1.h,
                                                                                          bottom: 8.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath5980,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 1.h,
                                                                                          bottom: 9.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6080,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          top: 10.v,
                                                                                          right: 7.h,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6054,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 7.h,
                                                                                          top: 11.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6090,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 5.h,
                                                                                          top: 3.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgSavePrimarycontainer7x10,
                                                                                        height: 7.v,
                                                                                        width: 10.h,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          top: 6.v,
                                                                                          right: 1.h,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgArrowRightPrimarycontainer,
                                                                                        height: 9.v,
                                                                                        width: 7.h,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          top: 2.v,
                                                                                          right: 4.h,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6096,
                                                                                        height: 10.v,
                                                                                        width: 3.h,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(right: 11.h),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6046,
                                                                                        height: 8.v,
                                                                                        width: 4.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 6.h,
                                                                                          top: 1.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgBrightnessPrimarycontainer,
                                                                                        height: 7.v,
                                                                                        width: 6.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 4.h,
                                                                                          top: 3.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6014,
                                                                                        height: 5.v,
                                                                                        width: 8.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 2.h,
                                                                                          top: 6.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6106,
                                                                                        height: 2.v,
                                                                                        width: 7.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(top: 11.v),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6016,
                                                                                        height: 4.v,
                                                                                        width: 8.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 1.h,
                                                                                          bottom: 7.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6110,
                                                                                        height: 1.v,
                                                                                        width: 8.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 1.h,
                                                                                          bottom: 11.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6112,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 5.h,
                                                                                          bottom: 10.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6114,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 13.h,
                                                                                          bottom: 6.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6024,
                                                                                        height: 1.v,
                                                                                        width: 2.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 5.h,
                                                                                          top: 3.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6102,
                                                                                        height: 3.v,
                                                                                        width: 1.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 1.h,
                                                                                          top: 8.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgPath6120,
                                                                                        height: 2.v,
                                                                                        width: 1.h,
                                                                                        alignment: Alignment.bottomRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          right: 2.h,
                                                                                          bottom: 8.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG5048,
                                                                                        height: 1.adaptSize,
                                                                                        width: 1.adaptSize,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          top: 11.v,
                                                                                          right: 10.h,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 12.h,
                                                                                          top: 9.v,
                                                                                        ),
                                                                                        child: _buildG1(
                                                                                          context,
                                                                                          image2: ImageConstant.imgG6270,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(
                                                                                          left: 10.h,
                                                                                          bottom: 10.v,
                                                                                        ),
                                                                                        child: _buildG1(
                                                                                          context,
                                                                                          image2: ImageConstant.imgG6270,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(
                                                                                          right: 12.h,
                                                                                          bottom: 10.v,
                                                                                        ),
                                                                                        child: _buildG1(
                                                                                          context,
                                                                                          image2: ImageConstant.imgG6350,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsets.only(
                                                                                          top: 11.v,
                                                                                          right: 10.h,
                                                                                        ),
                                                                                        child: _buildPath(
                                                                                          context,
                                                                                          imagePath: ImageConstant.imgG6270,
                                                                                          imageG: ImageConstant.imgG5048,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG6384,
                                                                                        height: 6.v,
                                                                                        width: 8.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 2.h,
                                                                                          top: 5.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG7594,
                                                                                        height: 1.v,
                                                                                        width: 10.h,
                                                                                        alignment: Alignment.centerRight,
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG8006,
                                                                                        height: 10.v,
                                                                                        width: 4.h,
                                                                                        alignment: Alignment.bottomRight,
                                                                                        margin: EdgeInsets.only(right: 9.h),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG6384,
                                                                                        height: 6.v,
                                                                                        width: 8.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(
                                                                                          left: 2.h,
                                                                                          bottom: 4.v,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG6448,
                                                                                        height: 10.v,
                                                                                        width: 4.h,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(right: 9.h),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG7594,
                                                                                        height: 7.v,
                                                                                        width: 8.h,
                                                                                        alignment: Alignment.topRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          top: 3.v,
                                                                                          right: 3.h,
                                                                                        ),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG8006,
                                                                                        height: 9.v,
                                                                                        width: 4.h,
                                                                                        alignment: Alignment.topLeft,
                                                                                        margin: EdgeInsets.only(left: 7.h),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG6496,
                                                                                        height: 2.v,
                                                                                        width: 9.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(bottom: 10.v),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG7594,
                                                                                        height: 10.v,
                                                                                        width: 2.h,
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        margin: EdgeInsets.only(left: 10.h),
                                                                                      ),
                                                                                      CustomImageView(
                                                                                        imagePath: ImageConstant.imgG7594,
                                                                                        height: 5.v,
                                                                                        width: 9.h,
                                                                                        alignment: Alignment.bottomRight,
                                                                                        margin: EdgeInsets.only(
                                                                                          right: 1.h,
                                                                                          bottom: 6.v,
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
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG5048,
                                                                  height: 23
                                                                      .adaptSize,
                                                                  width: 23
                                                                      .adaptSize,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom:
                                                                              6.v),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG6544,
                                                          height: 24.v,
                                                          width: 12.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 1.v),
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
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 40.v,
                                            width: 41.h,
                                            margin:
                                                EdgeInsets.only(bottom: 4.v),
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgG5048,
                                                  height: 40.v,
                                                  width: 41.h,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                    height: 37.v,
                                                    width: 38.h,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG5048,
                                                          height: 37.v,
                                                          width: 38.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                            height: 33.v,
                                                            width: 34.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 1.v),
                                                            child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgPath5760,
                                                                  height: 5.v,
                                                                  width: 4.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .only(
                                                                    left: 10.h,
                                                                    top: 7.v,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  child:
                                                                      SizedBox(
                                                                    height:
                                                                        29.v,
                                                                    width: 30.h,
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant.imgPlay,
                                                                          height:
                                                                              29.v,
                                                                          width:
                                                                              30.h,
                                                                          alignment:
                                                                              Alignment.center,
                                                                        ),
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              SizedBox(
                                                                            height:
                                                                                29.v,
                                                                            width:
                                                                                30.h,
                                                                            child:
                                                                                Stack(
                                                                              alignment: Alignment.center,
                                                                              children: [
                                                                                CustomImageView(
                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                  height: 29.v,
                                                                                  width: 30.h,
                                                                                  alignment: Alignment.center,
                                                                                ),
                                                                                Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: SizedBox(
                                                                                    height: 27.v,
                                                                                    width: 28.h,
                                                                                    child: Stack(
                                                                                      alignment: Alignment.topRight,
                                                                                      children: [
                                                                                        _buildG6(context),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(top: 6.v),
                                                                                          child: _buildG7(context),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 5.v,
                                                                                          width: 10.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(bottom: 7.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 10.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                          height: 10.v,
                                                                                          width: 9.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 3.h,
                                                                                            bottom: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: 7.v),
                                                                                          child: _buildG5(
                                                                                            context,
                                                                                            image1: ImageConstant.imgG5378,
                                                                                            image2: ImageConstant.imgPath6024,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(top: 6.v),
                                                                                          child: _buildG8(context),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            left: 4.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                          child: _buildG9(context),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: Alignment.topCenter,
                                                                                          child: SizedBox(
                                                                                            height: 11.v,
                                                                                            width: 6.h,
                                                                                            child: Stack(
                                                                                              alignment: Alignment.topCenter,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
                                                                                                  height: 11.v,
                                                                                                  width: 6.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.topCenter,
                                                                                                  child: SizedBox(
                                                                                                    height: 9.v,
                                                                                                    width: 6.h,
                                                                                                    child: Stack(
                                                                                                      alignment: Alignment.topLeft,
                                                                                                      children: [
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath5978,
                                                                                                          height: 1.v,
                                                                                                          width: 6.h,
                                                                                                          alignment: Alignment.topRight,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                                          height: 1.v,
                                                                                                          width: 3.h,
                                                                                                          alignment: Alignment.topLeft,
                                                                                                          margin: EdgeInsets.only(top: 1.v),
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6012,
                                                                                                          height: 1.v,
                                                                                                          width: 3.h,
                                                                                                          alignment: Alignment.topLeft,
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6932,
                                                                                                          height: 1.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.bottomLeft,
                                                                                                          margin: EdgeInsets.only(
                                                                                                            left: 1.h,
                                                                                                            bottom: 2.v,
                                                                                                          ),
                                                                                                        ),
                                                                                                        CustomImageView(
                                                                                                          imagePath: ImageConstant.imgPath6098,
                                                                                                          height: 9.v,
                                                                                                          width: 2.h,
                                                                                                          alignment: Alignment.centerLeft,
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
                                                                                          alignment: Alignment.topRight,
                                                                                          child: Container(
                                                                                            height: 9.v,
                                                                                            width: 8.h,
                                                                                            margin: EdgeInsets.only(
                                                                                              top: 1.v,
                                                                                              right: 4.h,
                                                                                            ),
                                                                                            child: Stack(
                                                                                              alignment: Alignment.centerLeft,
                                                                                              children: [
                                                                                                CustomImageView(
                                                                                                  imagePath: ImageConstant.imgG5048,
                                                                                                  height: 9.v,
                                                                                                  width: 8.h,
                                                                                                  alignment: Alignment.center,
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: Alignment.centerLeft,
                                                                                                  child: Column(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: Alignment.centerRight,
                                                                                                        child: SizedBox(
                                                                                                          height: 3.adaptSize,
                                                                                                          width: 3.adaptSize,
                                                                                                          child: Stack(
                                                                                                            alignment: Alignment.bottomLeft,
                                                                                                            children: [
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6000,
                                                                                                                height: 1.v,
                                                                                                                width: 2.h,
                                                                                                                alignment: Alignment.topRight,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgG5048,
                                                                                                                height: 2.adaptSize,
                                                                                                                width: 2.adaptSize,
                                                                                                                alignment: Alignment.bottomLeft,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6850,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.centerLeft,
                                                                                                              ),
                                                                                                              CustomImageView(
                                                                                                                imagePath: ImageConstant.imgPath6006,
                                                                                                                height: 1.adaptSize,
                                                                                                                width: 1.adaptSize,
                                                                                                                alignment: Alignment.topCenter,
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      SizedBox(height: 1.v),
                                                                                                      SizedBox(
                                                                                                        height: 3.v,
                                                                                                        width: 2.h,
                                                                                                        child: Stack(
                                                                                                          alignment: Alignment.topRight,
                                                                                                          children: [
                                                                                                            CustomImageView(
                                                                                                              imagePath: ImageConstant.imgPath6016,
                                                                                                              height: 3.v,
                                                                                                              width: 1.h,
                                                                                                              alignment: Alignment.centerLeft,
                                                                                                            ),
                                                                                                            CustomImageView(
                                                                                                              imagePath: ImageConstant.imgPath6932,
                                                                                                              height: 1.adaptSize,
                                                                                                              width: 1.adaptSize,
                                                                                                              alignment: Alignment.topRight,
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
                                                                                          imagePath: ImageConstant.imgPath6824,
                                                                                          height: 3.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 7.v,
                                                                                            right: 3.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 3.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 8.v,
                                                                                            right: 4.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6014,
                                                                                          height: 2.adaptSize,
                                                                                          width: 2.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 4.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(bottom: 7.v),
                                                                                          child: _buildPath7(context),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            right: 3.h,
                                                                                            bottom: 1.v,
                                                                                          ),
                                                                                          child: _buildG10(context),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6016,
                                                                                          height: 10.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6054,
                                                                                          height: 2.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                          margin: EdgeInsets.only(bottom: 7.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6382,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 12.h,
                                                                                            bottom: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6058,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 12.h,
                                                                                            bottom: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6060,
                                                                                          height: 1.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            left: 3.h,
                                                                                            bottom: 1.v,
                                                                                          ),
                                                                                          child: _buildSave(context),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 2.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            bottom: 9.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath5980,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            bottom: 9.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6080,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 10.v,
                                                                                            right: 7.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath5760,
                                                                                          height: 2.adaptSize,
                                                                                          width: 2.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 5.h,
                                                                                            top: 9.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6054,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 7.h,
                                                                                            top: 10.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6090,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 5.h,
                                                                                            top: 2.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgSavePrimarycontainer7x10,
                                                                                          height: 6.v,
                                                                                          width: 11.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(top: 6.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgArrowRightPrimarycontainer,
                                                                                          height: 8.v,
                                                                                          width: 7.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 1.v,
                                                                                            right: 4.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6096,
                                                                                          height: 9.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(right: 10.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6046,
                                                                                          height: 8.v,
                                                                                          width: 5.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 7.h,
                                                                                            top: 1.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgBrightnessPrimarycontainer,
                                                                                          height: 7.adaptSize,
                                                                                          width: 7.adaptSize,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 4.h,
                                                                                            top: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6014,
                                                                                          height: 5.v,
                                                                                          width: 8.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 6.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6106,
                                                                                          height: 2.v,
                                                                                          width: 7.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(top: 11.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6016,
                                                                                          height: 4.v,
                                                                                          width: 9.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            bottom: 8.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6110,
                                                                                          height: 1.v,
                                                                                          width: 8.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            bottom: 11.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6112,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 5.h,
                                                                                            bottom: 11.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6966,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 8.h,
                                                                                            bottom: 7.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6114,
                                                                                          height: 1.adaptSize,
                                                                                          width: 1.adaptSize,
                                                                                          alignment: Alignment.bottomCenter,
                                                                                          margin: EdgeInsets.only(bottom: 6.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6024,
                                                                                          height: 1.v,
                                                                                          width: 2.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 5.h,
                                                                                            top: 3.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6102,
                                                                                          height: 3.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 1.h,
                                                                                            top: 8.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgPath6120,
                                                                                          height: 2.v,
                                                                                          width: 1.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            right: 2.h,
                                                                                            bottom: 9.v,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            top: 11.v,
                                                                                            right: 10.h,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(top: 9.v),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            left: 10.h,
                                                                                            bottom: 10.v,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6270,
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsets.only(
                                                                                            right: 12.h,
                                                                                            bottom: 10.v,
                                                                                          ),
                                                                                          child: _buildG1(
                                                                                            context,
                                                                                            image2: ImageConstant.imgG6350,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6384,
                                                                                          height: 6.v,
                                                                                          width: 8.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            top: 4.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 1.v,
                                                                                          width: 10.h,
                                                                                          alignment: Alignment.centerRight,
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG8006,
                                                                                          height: 10.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(right: 8.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6384,
                                                                                          height: 6.v,
                                                                                          width: 8.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(
                                                                                            left: 2.h,
                                                                                            bottom: 5.v,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6448,
                                                                                          height: 9.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(right: 9.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 7.v,
                                                                                          width: 8.h,
                                                                                          alignment: Alignment.topRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            top: 3.v,
                                                                                            right: 3.h,
                                                                                          ),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG8006,
                                                                                          height: 9.v,
                                                                                          width: 4.h,
                                                                                          alignment: Alignment.topLeft,
                                                                                          margin: EdgeInsets.only(left: 7.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG6496,
                                                                                          height: 2.v,
                                                                                          width: 9.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(bottom: 10.v),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 10.v,
                                                                                          width: 3.h,
                                                                                          alignment: Alignment.bottomLeft,
                                                                                          margin: EdgeInsets.only(left: 10.h),
                                                                                        ),
                                                                                        CustomImageView(
                                                                                          imagePath: ImageConstant.imgG7594,
                                                                                          height: 5.v,
                                                                                          width: 9.h,
                                                                                          alignment: Alignment.bottomRight,
                                                                                          margin: EdgeInsets.only(
                                                                                            right: 1.h,
                                                                                            bottom: 6.v,
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
                                                                CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgG6544,
                                                                  height: 24.v,
                                                                  width: 12.h,
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
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
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath8026,
                                          height: 3.v,
                                          width: 13.h,
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(left: 8.h),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCloseGray900077x11,
                                          height: 14.v,
                                          width: 22.h,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(top: 30.v),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildArrowRight(
    BuildContext context, {
    required String priceText,
  }) {
    return SizedBox(
      height: 34.v,
      width: 93.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 34.v,
              width: 93.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineGray90019.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowRightWhiteA700,
                height: 8.v,
                width: 10.h,
                alignment: Alignment.centerRight,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text(
                priceText,
                style: CustomTextStyles.labelLargeDMSansBlack.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPath(
    BuildContext context, {
    required String imagePath,
    required String imageG,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: imagePath,
          height: 2.v,
          width: 1.h,
        ),
        CustomImageView(
          imagePath: imageG,
          height: 1.adaptSize,
          width: 1.adaptSize,
          margin: EdgeInsets.only(top: 1.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPath1(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return SizedBox(
      height: 2.v,
      width: 1.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: image1,
            height: 2.v,
            width: 1.h,
            alignment: Alignment.centerRight,
          ),
          CustomImageView(
            imagePath: image2,
            height: 1.adaptSize,
            width: 1.adaptSize,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildG(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return SizedBox(
      height: 2.v,
      width: 5.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: image1,
            height: 2.v,
            width: 5.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: image2,
            height: 1.adaptSize,
            width: 1.adaptSize,
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildG1(
    BuildContext context, {
    required String image2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgG5048,
          height: 1.adaptSize,
          width: 1.adaptSize,
        ),
        CustomImageView(
          imagePath: image2,
          height: 1.adaptSize,
          width: 1.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgG5048,
          height: 1.adaptSize,
          width: 1.adaptSize,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildG2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgG5048,
          height: 2.adaptSize,
          width: 2.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgG5048,
          height: 2.adaptSize,
          width: 2.adaptSize,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildG3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
          height: 3.v,
          width: 6.h,
        ),
        SizedBox(
          height: 2.v,
          width: 1.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPath5978,
                height: 2.v,
                width: 1.h,
                alignment: Alignment.centerRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPath5980,
                height: 1.adaptSize,
                width: 1.adaptSize,
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPath2(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPath6016,
          height: 2.v,
          width: 1.h,
          margin: EdgeInsets.only(bottom: 1.v),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgPath6088,
          height: 1.adaptSize,
          width: 1.adaptSize,
          margin: EdgeInsets.only(bottom: 1.v),
        ),
        Container(
          height: 1.v,
          width: 2.h,
          margin: EdgeInsets.only(
            left: 2.h,
            top: 2.v,
          ),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPath6024,
                height: 1.adaptSize,
                width: 1.adaptSize,
                alignment: Alignment.bottomLeft,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgG5048,
                      height: 1.adaptSize,
                      width: 1.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgG6270,
                      height: 1.adaptSize,
                      width: 1.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgG5048,
                      height: 1.adaptSize,
                      width: 1.adaptSize,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPath3(BuildContext context) {
    return SizedBox(
      height: 2.v,
      width: 5.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPath6020,
            height: 2.v,
            width: 5.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPath6080,
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPath6024,
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPath5978,
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPath4(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: image1,
          height: 4.v,
          width: 2.h,
        ),
        CustomImageView(
          imagePath: image2,
          height: 1.adaptSize,
          width: 1.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPath5(BuildContext context) {
    return SizedBox(
      height: 5.v,
      width: 4.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPath6062,
            height: 5.v,
            width: 4.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 2.adaptSize,
              width: 2.adaptSize,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6024,
                    height: 1.v,
                    width: 2.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6058,
                    height: 1.adaptSize,
                    width: 1.adaptSize,
                    alignment: Alignment.bottomRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6382,
                    height: 1.adaptSize,
                    width: 1.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6070,
                    height: 1.adaptSize,
                    width: 1.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildG4(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 4.v,
          width: 1.h,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgG7594,
                height: 4.v,
                width: 1.h,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgG7648,
                height: 1.adaptSize,
                width: 1.adaptSize,
                alignment: Alignment.bottomRight,
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgG5048,
          height: 4.v,
          width: 1.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildG5(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return SizedBox(
      height: 5.v,
      width: 10.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: image1,
            height: 5.v,
            width: 10.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: image2,
            height: 3.v,
            width: 1.h,
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPath6(
    BuildContext context, {
    required String image1,
    required String image2,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: image1,
          height: 9.v,
          width: 4.h,
        ),
        CustomImageView(
          imagePath: image2,
          height: 1.adaptSize,
          width: 1.adaptSize,
          margin: EdgeInsets.only(
            top: 1.v,
            bottom: 6.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildG6(BuildContext context) {
    return SizedBox(
      height: 4.adaptSize,
      width: 4.adaptSize,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgG5048,
            height: 4.adaptSize,
            width: 4.adaptSize,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgG5048,
            height: 4.adaptSize,
            width: 4.adaptSize,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildG7(BuildContext context) {
    return SizedBox(
      height: 7.v,
      width: 11.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
            height: 7.v,
            width: 11.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 5.v,
              width: 3.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPath5978,
                    height: 5.v,
                    width: 2.h,
                    alignment: Alignment.centerRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath5980,
                    height: 3.v,
                    width: 1.h,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildG8(BuildContext context) {
    return SizedBox(
      height: 6.v,
      width: 11.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgG5378,
            height: 6.v,
            width: 11.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPath6016,
                  height: 5.v,
                  width: 1.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPath6088,
                  height: 3.v,
                  width: 1.h,
                  margin: EdgeInsets.symmetric(vertical: 1.v),
                ),
                Container(
                  height: 1.v,
                  width: 3.h,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 4.v,
                  ),
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPath6024,
                        height: 1.v,
                        width: 2.h,
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgG5048,
                              height: 1.adaptSize,
                              width: 1.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgG6270,
                              height: 1.adaptSize,
                              width: 1.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgG5048,
                              height: 1.adaptSize,
                              width: 1.adaptSize,
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
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildG9(BuildContext context) {
    return SizedBox(
      height: 9.v,
      width: 7.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgG5676,
            height: 9.v,
            width: 7.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPath6084,
            height: 1.adaptSize,
            width: 1.adaptSize,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 2.h,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPath7(BuildContext context) {
    return SizedBox(
      height: 5.v,
      width: 10.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPath6020,
            height: 5.v,
            width: 10.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPath6080,
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPath6024,
                  height: 1.adaptSize,
                  width: 1.adaptSize,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    bottom: 2.v,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPath5978,
                  height: 3.v,
                  width: 1.h,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 1.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildG10(BuildContext context) {
    return SizedBox(
      height: 10.v,
      width: 9.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClipPathGroupBlack900052x55,
            height: 10.v,
            width: 9.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 10.v,
              width: 9.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsPrimarycontainer,
                    height: 6.v,
                    width: 8.h,
                    alignment: Alignment.topRight,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPath6046,
                          height: 9.v,
                          width: 4.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPath6078,
                          height: 1.adaptSize,
                          width: 1.adaptSize,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 6.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6000,
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 3.h,
                      bottom: 2.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6024,
                    height: 3.v,
                    width: 4.h,
                    alignment: Alignment.bottomRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6382,
                    height: 2.adaptSize,
                    width: 2.adaptSize,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 2.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSave(BuildContext context) {
    return SizedBox(
      height: 10.v,
      width: 9.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSavePrimarycontainer,
            height: 10.v,
            width: 9.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 5.adaptSize,
              width: 5.adaptSize,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6024,
                    height: 3.v,
                    width: 4.h,
                    alignment: Alignment.bottomLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6058,
                    height: 1.v,
                    width: 2.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6382,
                    height: 1.v,
                    width: 3.h,
                    alignment: Alignment.topRight,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPath6070,
                    height: 1.v,
                    width: 2.h,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
