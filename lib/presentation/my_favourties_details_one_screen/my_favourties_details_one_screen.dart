import '../my_favourties_details_one_screen/widgets/cardetailslist3_item_widget.dart';
import '../my_favourties_details_one_screen/widgets/interiortext3_item_widget.dart';
import 'bloc/my_favourties_details_one_bloc.dart';
import 'models/cardetailslist3_item_model.dart';
import 'models/interiortext3_item_model.dart';
import 'models/my_favourties_details_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:yka_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

class MyFavourtiesDetailsOneScreen extends StatelessWidget {
  const MyFavourtiesDetailsOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyFavourtiesDetailsOneBloc>(
      create: (context) =>
          MyFavourtiesDetailsOneBloc(MyFavourtiesDetailsOneState(
        myFavourtiesDetailsOneModelObj: MyFavourtiesDetailsOneModel(),
      ))
            ..add(MyFavourtiesDetailsOneInitialEvent()),
      child: MyFavourtiesDetailsOneScreen(),
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
              _buildSettingsColumn(context),
              SizedBox(height: 32.v),
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
                        _buildFordStack(context),
                        SizedBox(height: 32.v),
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
                        SizedBox(height: 33.v),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_ford".tr,
                                style: CustomTextStyles.titleLargeRegular,
                              ),
                              TextSpan(
                                text: "lbl_mustang_coupe".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 7.v),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_magnetic_blue".tr,
                              style: CustomTextStyles.titleSmallBlack90005Bold,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowDownBlack90005,
                              height: 4.v,
                              width: 8.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 6.v,
                                bottom: 9.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.v),
                        _buildBookTestDriveRow(context),
                        SizedBox(height: 20.v),
                        Text(
                          "lbl_overview".tr,
                          style: CustomTextStyles.titleSmallGray90003,
                        ),
                        SizedBox(height: 13.v),
                        _buildCarDetailsList(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildFrameColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsColumn(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 31.v),
          CustomAppBar(
            height: 49.v,
            leadingWidth: 68.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.only(left: 20.h),
            ),
            centerTitle: true,
            title: AppbarSubtitleTwo(
              text: "lbl_ford".tr,
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgSettings,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          SizedBox(
            height: 93.v,
            child: BlocSelector<MyFavourtiesDetailsOneBloc,
                MyFavourtiesDetailsOneState, MyFavourtiesDetailsOneModel?>(
              selector: (state) => state.myFavourtiesDetailsOneModelObj,
              builder: (context, myFavourtiesDetailsOneModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount: myFavourtiesDetailsOneModelObj
                          ?.interiortext3ItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    Interiortext3ItemModel model =
                        myFavourtiesDetailsOneModelObj
                                ?.interiortext3ItemList[index] ??
                            Interiortext3ItemModel();
                    return Interiortext3ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFordStack(BuildContext context) {
    return Container(
      height: 187.v,
      width: 343.h,
      margin: EdgeInsets.only(left: 5.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_ford2".tr,
                    style: CustomTextStyles.openSansGray10003,
                  ),
                  SizedBox(height: 28.v),
                  Container(
                    height: 36.v,
                    width: 342.h,
                    decoration: BoxDecoration(
                      color: appTheme.indigo5005,
                      borderRadius: BorderRadius.circular(
                        171.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage5273,
            height: 103.v,
            width: 342.h,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 13.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBookTestDriveRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Row(
        children: [
          CustomElevatedButton(
            width: 171.h,
            text: "lbl_book_test_drive".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 7.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFi638410,
                height: 22.adaptSize,
                width: 22.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillPrimaryTL10,
            buttonTextStyle: CustomTextStyles.labelLargePrimary,
          ),
          CustomElevatedButton(
            width: 170.h,
            text: "lbl_calculate_emi".tr,
            margin: EdgeInsets.only(left: 12.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 9.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTrophy,
                height: 20.v,
                width: 17.h,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillRedTL10,
            buttonTextStyle: CustomTextStyles.labelLargeRed800Bold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCarDetailsList(BuildContext context) {
    return SizedBox(
      height: 87.v,
      child: BlocSelector<MyFavourtiesDetailsOneBloc,
          MyFavourtiesDetailsOneState, MyFavourtiesDetailsOneModel?>(
        selector: (state) => state.myFavourtiesDetailsOneModelObj,
        builder: (context, myFavourtiesDetailsOneModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 16.h,
              );
            },
            itemCount: myFavourtiesDetailsOneModelObj
                    ?.cardetailslist3ItemList.length ??
                0,
            itemBuilder: (context, index) {
              Cardetailslist3ItemModel model = myFavourtiesDetailsOneModelObj
                      ?.cardetailslist3ItemList[index] ??
                  Cardetailslist3ItemModel();
              return Cardetailslist3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 29.h,
        right: 20.h,
        bottom: 16.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgFrame1171275229,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 344.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgFrame1171275229,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 9.v),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.3,
                    child: Text(
                      "lbl_variant".tr,
                      style: CustomTextStyles.labelMediumBlack90005,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_f_150_raptor".tr,
                          style: CustomTextStyles.labelLargePrimary,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 4.v,
                          width: 8.h,
                          margin: EdgeInsets.only(
                            left: 20.h,
                            top: 6.v,
                            bottom: 7.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_bhd".tr,
                            style: CustomTextStyles.bodyMediumWhiteA700,
                          ),
                          TextSpan(
                            text: "lbl_500".tr,
                            style: CustomTextStyles.titleSmallWhiteA700Bold,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "lbl_reserve".tr,
                      style: CustomTextStyles.titleSmallWhiteA700Bold_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightWhiteA70010x13,
                    height: 10.v,
                    width: 13.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      top: 5.v,
                      bottom: 5.v,
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
