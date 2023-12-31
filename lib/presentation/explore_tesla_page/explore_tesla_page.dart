import 'bloc/explore_tesla_bloc.dart';
import 'models/explore_tesla_model.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_drop_down.dart';
import 'package:yka_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ExploreTeslaPage extends StatefulWidget {
  const ExploreTeslaPage({Key? key})
      : super(
          key: key,
        );

  @override
  ExploreTeslaPageState createState() => ExploreTeslaPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreTeslaBloc>(
      create: (context) => ExploreTeslaBloc(ExploreTeslaState(
        exploreTeslaModelObj: ExploreTeslaModel(),
      ))
        ..add(ExploreTeslaInitialEvent()),
      child: ExploreTeslaPage(),
    );
  }
}

class ExploreTeslaPageState extends State<ExploreTeslaPage>
    with AutomaticKeepAliveClientMixin<ExploreTeslaPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 46.v),
                _buildSearchSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: BlocSelector<ExploreTeslaBloc, ExploreTeslaState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 20.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70.h,
                    padding: EdgeInsets.symmetric(vertical: 5.v),
                    decoration: AppDecoration.fillGray30002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 4.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_filter".tr,
                            style: CustomTextStyles.labelLargeBluegray70004,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDownBlueGray700,
                          height: 3.v,
                          width: 7.h,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            top: 11.v,
                            bottom: 11.v,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "lbl_suv".tr,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.labelLargeBluegray70004,
                        ),
                      ],
                    ),
                  ),
                  BlocSelector<ExploreTeslaBloc, ExploreTeslaState,
                      ExploreTeslaModel?>(
                    selector: (state) => state.exploreTeslaModelObj,
                    builder: (context, exploreTeslaModelObj) {
                      return CustomDropDown(
                        width: 92.h,
                        hintText: "lbl_car_type".tr,
                        items: exploreTeslaModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context
                              .read<ExploreTeslaBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                  BlocSelector<ExploreTeslaBloc, ExploreTeslaState,
                      ExploreTeslaModel?>(
                    selector: (state) => state.exploreTeslaModelObj,
                    builder: (context, exploreTeslaModelObj) {
                      return CustomDropDown(
                        width: 97.h,
                        hintText: "lbl_fuel_type".tr,
                        items: exploreTeslaModelObj?.dropdownItemList1 ?? [],
                        onChanged: (value) {
                          context
                              .read<ExploreTeslaBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        },
                      );
                    },
                  ),
                  BlocSelector<ExploreTeslaBloc, ExploreTeslaState,
                      ExploreTeslaModel?>(
                    selector: (state) => state.exploreTeslaModelObj,
                    builder: (context, exploreTeslaModelObj) {
                      return CustomDropDown(
                        width: 82.h,
                        hintText: "lbl_budget".tr,
                        items: exploreTeslaModelObj?.dropdownItemList2 ?? [],
                        onChanged: (value) {
                          context
                              .read<ExploreTeslaBloc>()
                              .add(ChangeDropDown2Event(value: value));
                        },
                      );
                    },
                  ),
                  Container(
                    height: 36.v,
                    width: 49.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray30002,
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
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
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 119.h,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "lbl_red_velvet".tr,
                                          style: CustomTextStyles
                                              .bodySmallOpenSansBluegray500,
                                        ),
                                        Container(
                                          height: 2.adaptSize,
                                          width: 2.adaptSize,
                                          margin: EdgeInsets.only(
                                            top: 8.v,
                                            bottom: 7.v,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appTheme.blueGray500,
                                            borderRadius: BorderRadius.circular(
                                              1.h,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "lbl_1200_km".tr,
                                          style: CustomTextStyles
                                              .bodySmallOpenSansBluegray500,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "lbl_2018_gtr".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ],
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevision,
                                height: 14.v,
                                width: 15.h,
                                margin: EdgeInsets.symmetric(vertical: 13.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 3.v,
                                  bottom: 3.v,
                                ),
                                child: _buildArrowRightSection(
                                  context,
                                  priceText: "lbl_bhd_500".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.v),
                        SizedBox(
                          height: 141.v,
                          width: 341.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Opacity(
                                  opacity: 0.04,
                                  child: Text(
                                    "lbl_nissan2".tr,
                                    style: CustomTextStyles.openSansBlack90005,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage42,
                                height: 139.v,
                                width: 300.h,
                                alignment: Alignment.centerRight,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
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
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 21.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_black".tr,
                                    style: CustomTextStyles
                                        .bodySmallOpenSansBluegray500,
                                  ),
                                  Text(
                                    "lbl_leaf_ev".tr,
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
                                  top: 13.v,
                                  bottom: 12.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 3.v,
                                ),
                                child: _buildArrowRightSection(
                                  context,
                                  priceText: "lbl_bhd_500".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.v),
                        SizedBox(
                          height: 141.v,
                          width: 341.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Opacity(
                                  opacity: 0.04,
                                  child: Text(
                                    "lbl_nissan2".tr,
                                    style: CustomTextStyles.openSansBlack90005,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage86,
                                height: 119.v,
                                width: 336.h,
                                alignment: Alignment.bottomCenter,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(right: 20.h),
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
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    decoration: AppDecoration.outline.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 11.v),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_vivid_blue".tr,
                                    style: CustomTextStyles
                                        .bodySmallOpenSansBluegray500,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "lbl_qashpai".tr,
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
                                  top: 13.v,
                                  bottom: 14.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 3.v,
                                  bottom: 4.v,
                                ),
                                child: _buildArrowRightSection(
                                  context,
                                  priceText: "lbl_bhd_500".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        SizedBox(
                          height: 132.v,
                          width: 341.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Opacity(
                                  opacity: 0.04,
                                  child: Text(
                                    "lbl_nissan2".tr,
                                    style: CustomTextStyles.openSansBlack90005,
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.8,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse3066,
                                  height: 15.v,
                                  width: 285.h,
                                  alignment: Alignment.bottomRight,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img204RealisticI,
                                height: 108.v,
                                width: 293.h,
                                alignment: Alignment.bottomRight,
                                margin: EdgeInsets.only(bottom: 6.v),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildArrowRightSection(
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
}
