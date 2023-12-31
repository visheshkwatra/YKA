import '../models/carselectorgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class CarselectorgridItemWidget extends StatelessWidget {
  CarselectorgridItemWidget(
    this.carselectorgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarselectorgridItemModel carselectorgridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 119.v,
                  width: 163.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 4.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 52.h,
                            vertical: 21.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup1171275327,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 35.v),
                              Text(
                                carselectorgridItemModelObj.sedanText!,
                                style: CustomTextStyles.titleSmallBlue70002,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: carselectorgridItemModelObj?.hatchbackImage,
                        height: 53.v,
                        width: 163.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 120.v,
                  width: 158.h,
                  margin: EdgeInsets.only(left: 26.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 33.h,
                            vertical: 23.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder20,
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup1171275324,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 31.v),
                              Text(
                                carselectorgridItemModelObj.luxurySUVText!,
                                style: CustomTextStyles.titleSmallRedA400,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: carselectorgridItemModelObj?.luxurySUVImage,
                        height: 60.v,
                        width: 156.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120.v,
                    width: 161.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 2.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 36.h,
                              vertical: 21.v,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup1171275324DeepOrange50,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 35.v),
                                Text(
                                  carselectorgridItemModelObj.hatchbackText!,
                                  style: CustomTextStyles.titleSmallYellow900,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath:
                              carselectorgridItemModelObj?.hatchbackImage1,
                          height: 60.v,
                          width: 161.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120.v,
                    width: 158.h,
                    margin: EdgeInsets.only(left: 26.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 59.h,
                              vertical: 21.v,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder20,
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup1171275324Green70001,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 35.v),
                                Text(
                                  carselectorgridItemModelObj.sUVText!,
                                  style: CustomTextStyles.titleSmallGreen70003,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: carselectorgridItemModelObj?.sUVImage,
                          height: 65.v,
                          width: 158.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.v),
        Padding(
          padding: EdgeInsets.only(right: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 127.v,
                width: 162.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 4.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 59.h,
                          vertical: 21.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup1171275324BlueGray40002,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 35.v),
                            Text(
                              carselectorgridItemModelObj.sUVText1!,
                              style: CustomTextStyles.titleSmallGray800,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: carselectorgridItemModelObj?.sUVImage1,
                      height: 99.v,
                      width: 162.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 27.h,
                  bottom: 28.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 51.h,
                  vertical: 23.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup1171275324Lime50,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 31.v),
                    Text(
                      carselectorgridItemModelObj.sportsText!,
                      style: CustomTextStyles.titleSmallLime700,
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
}
