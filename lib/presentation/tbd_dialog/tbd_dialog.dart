import 'bloc/tbd_bloc.dart';
import 'models/tbd_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TbdDialog extends StatelessWidget {
  const TbdDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TbdBloc>(
      create: (context) => TbdBloc(TbdState(
        tbdModelObj: TbdModel(),
      ))
        ..add(TbdInitialEvent()),
      child: TbdDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      child: Column(
        children: [
          Spacer(),
          _buildFrame(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 61.h),
      decoration: AppDecoration.gradientRedToRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 150.v,
            width: 203.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 150.v,
                    width: 203.h,
                    decoration: BoxDecoration(
                      color: appTheme.red40002,
                      borderRadius: BorderRadius.circular(
                        101.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 140.v,
                    width: 191.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 51.h,
                              vertical: 20.v,
                            ),
                            decoration: AppDecoration.fillRed700,
                            child: SizedBox(
                              width: 55.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 117.v,
                            width: 94.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 17.v,
                                    width: 14.h,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      top: 32.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUserOnerrorcontainer,
                                          height: 17.v,
                                          width: 14.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: SizedBox(
                                              height: 15.v,
                                              child: VerticalDivider(
                                                width: 3.h,
                                                thickness: 3.v,
                                                color: appTheme.red30001,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath30,
                                  height: 112.v,
                                  width: 71.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 5.h),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 2.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 3.h,
                                      vertical: 8.v,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.imgGroup753,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath200,
                                          height: 4.v,
                                          width: 10.h,
                                          margin: EdgeInsets.only(right: 20.h),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath40,
                                          height: 3.v,
                                          width: 2.h,
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(left: 13.h),
                                        ),
                                        SizedBox(height: 5.v),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath40,
                                          height: 7.v,
                                          width: 2.h,
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(left: 10.h),
                                        ),
                                        SizedBox(height: 1.v),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 25.v,
                                              width: 5.h,
                                              child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgPath42,
                                                    height: 7.v,
                                                    width: 2.h,
                                                    alignment:
                                                        Alignment.topLeft,
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: SizedBox(
                                                      height: 23.v,
                                                      child: VerticalDivider(
                                                        width: 5.h,
                                                        thickness: 5.v,
                                                        color:
                                                            appTheme.green600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPath36,
                                              height: 13.v,
                                              width: 4.h,
                                              margin: EdgeInsets.only(
                                                left: 50.h,
                                                bottom: 11.v,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 17.v),
                                        Padding(
                                          padding: EdgeInsets.only(right: 10.h),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPath46,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 3.v),
                                              ),
                                              Container(
                                                height: 3.v,
                                                width: 1.h,
                                                margin: EdgeInsets.only(
                                                  left: 1.h,
                                                  top: 1.v,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPath48,
                                                      height: 1.adaptSize,
                                                      width: 1.adaptSize,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgPath54,
                                                      height: 2.v,
                                                      width: 1.h,
                                                      alignment:
                                                          Alignment.topLeft,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 28.v),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrast,
                                  height: 6.v,
                                  width: 15.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(top: 27.v),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 17.v,
                                    width: 21.h,
                                    margin: EdgeInsets.only(top: 25.v),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserGray40001,
                                          height: 17.v,
                                          width: 21.h,
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath104,
                                          height: 2.v,
                                          width: 11.h,
                                          alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(
                                            top: 3.v,
                                            right: 3.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSave,
                                  height: 8.v,
                                  width: 74.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 41.v,
                                    right: 3.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath66,
                                  height: 8.v,
                                  width: 1.h,
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(
                                    left: 18.h,
                                    top: 36.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgUserBlue300,
                                  height: 81.v,
                                  width: 67.h,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 6.h),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 73.v,
                                    width: 70.h,
                                    margin: EdgeInsets.only(
                                      left: 6.h,
                                      bottom: 18.v,
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 2.h,
                                      vertical: 4.v,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.imgGroup2038,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: SizedBox(
                                            height: 22.v,
                                            width: 39.h,
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgSettingsBlue300,
                                                  height: 22.v,
                                                  width: 39.h,
                                                  alignment: Alignment.center,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPath74,
                                                  height: 2.v,
                                                  width: 3.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 9.v,
                                                    right: 14.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: 3.v,
                                          width: 1.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(
                                            right: 10.h,
                                            bottom: 19.v,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              right: 8.h,
                                              bottom: 19.v,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgSettingsBlue30001,
                                                  height: 15.v,
                                                  width: 18.h,
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imageNotFound,
                                                  height: 1.adaptSize,
                                                  width: 1.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    top: 6.v,
                                                    bottom: 8.v,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath92,
                                          height: 2.v,
                                          width: 1.h,
                                          alignment: Alignment.centerRight,
                                          margin: EdgeInsets.only(right: 7.h),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 7.h),
                                            child: SizedBox(
                                              height: 34.v,
                                              child: VerticalDivider(
                                                width: 3.h,
                                                thickness: 3.v,
                                                color: appTheme.green90001,
                                                endIndent: 19.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 7.h),
                                            child: SizedBox(
                                              height: 34.v,
                                              child: VerticalDivider(
                                                width: 4.h,
                                                thickness: 4.v,
                                                color: appTheme.blueGray50005,
                                                endIndent: 19.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath102,
                                          height: 13.v,
                                          width: 4.h,
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.only(
                                            right: 6.h,
                                            bottom: 22.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath80,
                                  height: 9.v,
                                  width: 1.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 17.h,
                                    bottom: 50.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath82,
                                  height: 10.v,
                                  width: 4.h,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 17.h,
                                    bottom: 50.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrastGray500,
                                  height: 14.v,
                                  width: 19.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 28.v,
                                    right: 3.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgForward,
                                  height: 28.v,
                                  width: 24.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 30.v,
                                    right: 4.h,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 64.v,
                                    width: 52.h,
                                    margin: EdgeInsets.only(top: 20.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.h,
                                      vertical: 24.v,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.imgGroup2039,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath120,
                                          height: 1.adaptSize,
                                          width: 1.adaptSize,
                                          alignment: Alignment.bottomRight,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath122,
                                          height: 2.v,
                                          width: 1.h,
                                          alignment: Alignment.bottomRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 28.v,
                                      right: 19.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgBrightness,
                                          height: 30.v,
                                          width: 9.h,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath114,
                                          height: 1.adaptSize,
                                          width: 1.adaptSize,
                                          margin: EdgeInsets.only(
                                            top: 26.v,
                                            bottom: 2.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath116,
                                  height: 13.v,
                                  width: 4.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 34.v,
                                    right: 19.h,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath118,
                                  height: 4.v,
                                  width: 6.h,
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.only(
                                    top: 54.v,
                                    right: 20.h,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 24.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath124,
                                          height: 5.v,
                                          width: 3.h,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath126,
                                          height: 1.adaptSize,
                                          width: 1.adaptSize,
                                          margin: EdgeInsets.only(
                                            top: 2.v,
                                            bottom: 1.v,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 65.v,
                                    width: 71.h,
                                    margin: EdgeInsets.only(top: 18.v),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 14.h,
                                      vertical: 9.v,
                                    ),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: fs.Svg(
                                          ImageConstant.imgGroup799,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgStar7,
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgSettingsWhiteA700,
                                          height: 12.v,
                                          width: 16.h,
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 13.v),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgUserOnerrorcontainer14x12,
                                  height: 14.v,
                                  width: 12.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 22.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath134,
                                  height: 2.adaptSize,
                                  width: 2.adaptSize,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 21.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 10.v,
                                    width: 6.h,
                                    margin: EdgeInsets.only(
                                      left: 8.h,
                                      bottom: 21.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgSettingsTeal300,
                                          height: 10.v,
                                          width: 6.h,
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imageNotFound,
                                          height: 1.adaptSize,
                                          width: 1.adaptSize,
                                          alignment: Alignment.bottomLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSettingsRed30001,
                                  height: 6.adaptSize,
                                  width: 6.adaptSize,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 22.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrastOrange100,
                                  height: 7.v,
                                  width: 6.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    bottom: 25.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 19.v,
                                    width: 15.h,
                                    margin: EdgeInsets.only(bottom: 30.v),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUserOnerrorcontainer14x12,
                                          height: 19.v,
                                          width: 15.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            height: 10.v,
                                            width: 9.h,
                                            margin: EdgeInsets.only(
                                              left: 1.h,
                                              bottom: 2.v,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUserOrange100,
                                                  height: 9.v,
                                                  width: 7.h,
                                                  alignment: Alignment.topRight,
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPath160,
                                                  height: 3.adaptSize,
                                                  width: 3.adaptSize,
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
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 17.v,
                                    width: 13.h,
                                    margin: EdgeInsets.only(
                                      left: 4.h,
                                      bottom: 43.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgUserOnerrorcontainer17x13,
                                          height: 17.v,
                                          width: 13.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              SizedBox(
                                                height: 3.v,
                                                width: 2.h,
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imageNotFound,
                                                      height: 1.adaptSize,
                                                      width: 1.adaptSize,
                                                      alignment:
                                                          Alignment.bottomRight,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPath170,
                                                            height: 3.v,
                                                            width: 2.h,
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imageNotFound,
                                                            height: 1.adaptSize,
                                                            width: 1.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 1.v),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 7.v),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPath176,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                alignment: Alignment.centerLeft,
                                              ),
                                              SizedBox(height: 5.v),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPath162,
                                                height: 1.adaptSize,
                                                width: 1.adaptSize,
                                                margin:
                                                    EdgeInsets.only(right: 1.h),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath150,
                                  height: 12.v,
                                  width: 3.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 13.h,
                                    bottom: 30.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath152,
                                  height: 1.adaptSize,
                                  width: 1.adaptSize,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 12.h,
                                    bottom: 29.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath154,
                                  height: 2.v,
                                  width: 3.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 8.h,
                                    bottom: 28.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 12.h,
                                      bottom: 29.v,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath156,
                                          height: 2.v,
                                          width: 1.h,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPath158,
                                          height: 1.adaptSize,
                                          width: 1.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath164,
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    bottom: 28.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsRed3000112x12,
                                  height: 12.adaptSize,
                                  width: 12.adaptSize,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 2.h,
                                    bottom: 30.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgContrastTeal300,
                                  height: 16.v,
                                  width: 7.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 12.h,
                                    bottom: 42.v,
                                  ),
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSettingsRed300017x9,
                                  height: 7.v,
                                  width: 9.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    bottom: 42.v,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 16.v,
                                    width: 11.h,
                                    margin: EdgeInsets.only(
                                      left: 6.h,
                                      bottom: 43.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserRed30001,
                                          height: 16.v,
                                          width: 11.h,
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgUserOrange100,
                                          height: 9.v,
                                          width: 7.h,
                                          alignment: Alignment.bottomLeft,
                                          margin: EdgeInsets.only(bottom: 3.v),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPath182,
                                  height: 1.v,
                                  width: 2.h,
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(
                                    left: 12.h,
                                    bottom: 42.v,
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
          SizedBox(height: 27.v),
          SizedBox(
            width: 218.h,
            child: Text(
              "msg_this_coupon_is_not".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineSmallWhiteA700.copyWith(
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "msg_try_different_service".tr,
            style: CustomTextStyles.bodyLargeWhiteA70016,
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            height: 56.v,
            text: "lbl_try_again".tr,
            margin: EdgeInsets.only(
              left: 17.h,
              right: 24.h,
            ),
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.titleMediumRed800,
            alignment: Alignment.centerLeft,
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
