import 'bloc/splash_one_bloc.dart';
import 'models/splash_one_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_title.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class SplashOneScreen extends StatelessWidget {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashOneBloc>(
      create: (context) => SplashOneBloc(SplashOneState(
        splashOneModelObj: SplashOneModel(),
      ))
        ..add(SplashOneInitialEvent()),
      child: SplashOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashOneBloc, SplashOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: Container(
              width: 375.h,
              padding: EdgeInsets.only(top: 204.v),
              child: Column(
                children: [
                  Text(
                    "msg_no_vehicles_added".tr,
                    style: CustomTextStyles.titleLargeRubikMedium,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_add_vehicle_to_continue".tr,
                    style: CustomTextStyles.bodyLargeRubikBlack90005,
                  ),
                  SizedBox(height: 19.v),
                  CustomIconButton(
                    height: 58.v,
                    width: 56.h,
                    child: CustomImageView(),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgClockBlack90005,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_my_vehicles".tr,
      ),
    );
  }
}
