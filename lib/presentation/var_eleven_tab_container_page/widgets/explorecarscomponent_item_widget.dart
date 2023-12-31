import '../models/explorecarscomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class ExplorecarscomponentItemWidget extends StatelessWidget {
  ExplorecarscomponentItemWidget(
    this.explorecarscomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExplorecarscomponentItemModel explorecarscomponentItemModelObj;

  late TabController tabviewController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 27.v),
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 139.v,
              bottom: 67.v,
            ),
            child: Text(
              "lbl_explore_cars".tr,
              style: CustomTextStyles.titleSmallGray70001,
            ),
          ),
          Container(
            height: 106.v,
            width: 138.h,
            margin: EdgeInsets.only(bottom: 120.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 37.h,
                      vertical: 16.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
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
                        SizedBox(height: 42.v),
                        Text(
                          "lbl_sedan".tr,
                          style: CustomTextStyles.titleSmallBlue70002,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage105,
                  height: 42.v,
                  width: 129.h,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          Container(
            height: 40.v,
            width: 373.h,
            margin: EdgeInsets.only(
              top: 171.v,
              bottom: 16.v,
            ),
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              labelColor: appTheme.whiteA700,
              unselectedLabelColor: appTheme.blueGray70004,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_3k_bhd".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_3_6k_bhd".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_6_9k_bhd".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_9k_bhd".tr,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 107.v,
            width: 135.h,
            margin: EdgeInsets.only(
              left: 13.h,
              bottom: 120.v,
            ),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 18.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
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
                        SizedBox(height: 38.v),
                        Text(
                          "lbl_luxury_suv".tr,
                          style: CustomTextStyles.titleSmallRedA400,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage104,
                  height: 49.v,
                  width: 126.h,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          Container(
            height: 107.v,
            width: 119.h,
            margin: EdgeInsets.only(
              left: 16.h,
              bottom: 120.v,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage106,
                          height: 57.v,
                          width: 61.h,
                        ),
                        SizedBox(height: 2.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3040,
                          height: 2.v,
                          width: 50.h,
                          alignment: Alignment.centerRight,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 45.h,
                      vertical: 16.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup1171275328,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 48.v),
                        Text(
                          "lbl_suv".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallGreen70003,
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
}
