import '../booking_details_two_screen/widgets/carnamelist1_item_widget.dart';
import '../booking_details_two_screen/widgets/interiortext4_item_widget.dart';
import 'bloc/booking_details_two_bloc.dart';
import 'models/booking_details_two_model.dart';
import 'models/carnamelist1_item_model.dart';
import 'models/interiortext4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:yka_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

class BookingDetailsTwoScreen extends StatelessWidget {
  const BookingDetailsTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BookingDetailsTwoBloc>(
      create: (context) => BookingDetailsTwoBloc(BookingDetailsTwoState(
        bookingDetailsTwoModelObj: BookingDetailsTwoModel(),
      ))
        ..add(BookingDetailsTwoInitialEvent()),
      child: BookingDetailsTwoScreen(),
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
                        Text(
                          "lbl_magnetic_blue".tr,
                          style: CustomTextStyles.bodyMediumBluegray50002,
                        ),
                        SizedBox(height: 14.v),
                        _buildPriceRow(context),
                        SizedBox(height: 20.v),
                        Text(
                          "lbl_overview".tr,
                          style: CustomTextStyles.titleSmallGray90003,
                        ),
                        SizedBox(height: 13.v),
                        _buildCarNameList(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildCancelBookingColumn(context),
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
            child: BlocSelector<BookingDetailsTwoBloc, BookingDetailsTwoState,
                BookingDetailsTwoModel?>(
              selector: (state) => state.bookingDetailsTwoModelObj,
              builder: (context, bookingDetailsTwoModelObj) {
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
                  itemCount:
                      bookingDetailsTwoModelObj?.interiortext4ItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    Interiortext4ItemModel model = bookingDetailsTwoModelObj
                            ?.interiortext4ItemList[index] ??
                        Interiortext4ItemModel();
                    return Interiortext4ItemWidget(
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
  Widget _buildPriceRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "msg_reserved_bhd_500".tr,
              style: CustomTextStyles.labelLargeRed800Bold,
            ),
          ),
          Text(
            "lbl_12th_oct_2023".tr,
            style: CustomTextStyles.labelLargeRed800Bold,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCarNameList(BuildContext context) {
    return SizedBox(
      height: 87.v,
      child: BlocSelector<BookingDetailsTwoBloc, BookingDetailsTwoState,
          BookingDetailsTwoModel?>(
        selector: (state) => state.bookingDetailsTwoModelObj,
        builder: (context, bookingDetailsTwoModelObj) {
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
            itemCount:
                bookingDetailsTwoModelObj?.carnamelist1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Carnamelist1ItemModel model =
                  bookingDetailsTwoModelObj?.carnamelist1ItemList[index] ??
                      Carnamelist1ItemModel();
              return Carnamelist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCancelBookingColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
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
      child: CustomElevatedButton(
        text: "lbl_cancel_booking".tr,
        buttonStyle: CustomButtonStyles.fillIndigo,
        buttonTextStyle: CustomTextStyles.labelLargePrimary,
      ),
    );
  }
}
