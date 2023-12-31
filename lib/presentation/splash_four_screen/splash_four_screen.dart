import 'bloc/splash_four_bloc.dart';
import 'models/splash_four_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_title.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class SplashFourScreen extends StatelessWidget {
  const SplashFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashFourBloc>(
      create: (context) => SplashFourBloc(SplashFourState(
        splashFourModelObj: SplashFourModel(),
      ))
        ..add(SplashFourInitialEvent()),
      child: SplashFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashFourBloc, SplashFourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray200,
            appBar: _buildAppBar(context),
            body: Container(
              width: 375.h,
              padding: EdgeInsets.symmetric(vertical: 15.v),
              child: Column(
                children: [
                  Spacer(
                    flex: 41,
                  ),
                  Text(
                    "msg_no_favorite_found".tr,
                    style: CustomTextStyles.titleLargeRubikMedium,
                  ),
                  Spacer(
                    flex: 58,
                  ),
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
        text: "lbl_my_favorites".tr,
      ),
    );
  }
}
