import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR FiftyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.varFiftythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR FiftyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.varFiftyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Modal One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.modalOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Modal".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.modalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Booking Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.bookingDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile ThirtyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirtythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile ThirtyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SixtySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Landing Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.landingPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile ThirtyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirtyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Landing Page One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.landingPageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile ThirtySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirtysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SixtyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Seventy".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile ThirtyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirtyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Pin - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.resetPinTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR Eight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.varEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Set Pin".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.setPinScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FortyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFortyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR Eleven - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.varElevenContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Nine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Ten".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FortyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFortytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Service".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.serviceScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FortyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFortyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Explore Mercedes - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreMercedesTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Landing Page Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.landingPageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Booking Details One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.bookingDetailsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Twelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SeventyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Thirteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Favourties Details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myFavourtiesDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FortyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFortyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile EightyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileEightyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Fifteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FortySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFortysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Sixteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Seventeen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR TwentyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.varTwentyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FortyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFortynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile EightyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileEightyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Fifty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile EightyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileEightyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Nineteen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileNineteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "My Favourties Details One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myFavourtiesDetailsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR FortyOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.varFortyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Screen - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeScreenTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Twenty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile EightySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileEightysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile EightySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileEightysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Booking Details Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.bookingDetailsTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile EightyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileEightyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Landing Page Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.landingPageThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Set Pin One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.setPinOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentyFive".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentyfiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile FiftyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileFiftynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile NinetyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileNinetyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentySeven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentysevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Set Pin Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.setPinTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile TwentyNine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileTwentynineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Sixty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Thirty".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirtyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile ThirtyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThirtyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SixtyOne".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtyoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SixtyTwo".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtytwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SixtyThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtythreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SixtyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtyfourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Seven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile SixtySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSixtysixScreen),
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
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
