import 'bloc/home_screen_tab_container_bloc.dart';
import 'models/home_screen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:yka_app/presentation/profile_eightythree_page/profile_eightythree_page.dart';
import 'package:yka_app/presentation/profile_fortythree_page/profile_fortythree_page.dart';
import 'package:yka_app/presentation/var_eleven_tab_container_page/var_eleven_tab_container_page.dart';
import 'package:yka_app/presentation/var_six_page/var_six_page.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_bottom_bar.dart';

class HomeScreenTabContainerScreen extends StatefulWidget {
  const HomeScreenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenTabContainerScreenState createState() =>
      HomeScreenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenTabContainerBloc>(
      create: (context) =>
          HomeScreenTabContainerBloc(HomeScreenTabContainerState(
        homeScreenTabContainerModelObj: HomeScreenTabContainerModel(),
      ))
            ..add(HomeScreenTabContainerInitialEvent()),
      child: HomeScreenTabContainerScreen(),
    );
  }
}

class HomeScreenTabContainerScreenState
    extends State<HomeScreenTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenTabContainerBloc, HomeScreenTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildPickupDelivery(context),
                  Expanded(
                    child: SizedBox(
                      height: 615.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          HomeScreenPage(),
                          HomeScreenPage(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitleThree(
        text: "lbl_nearby_centres".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildPickupDelivery(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40.v,
              width: 48.h,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineGray20004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameBlack9000524x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
            ),
            Container(
              width: 135.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlineGray20004.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Text(
                "msg_pickup_delivery".tr,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Container(
              height: 40.v,
              width: 218.h,
              margin: EdgeInsets.only(left: 10.h),
              child: TabBar(
                controller: tabviewController,
                isScrollable: true,
                tabs: [
                  Tab(
                    child: Text(
                      "lbl_last_visited".tr,
                    ),
                  ),
                  Tab(
                    child: Text(
                      "lbl_best_rated".tr,
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

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.varElevenTabContainerPage;
      case BottomBarEnum.Findus:
        return AppRoutes.profileEightythreePage;
      case BottomBarEnum.Services:
        return AppRoutes.varSixPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileFortythreePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.varElevenTabContainerPage:
        return VarElevenTabContainerPage();
      case AppRoutes.profileEightythreePage:
        return ProfileEightythreePage();
      case AppRoutes.varSixPage:
        return VarSixPage();
      case AppRoutes.profileFortythreePage:
        return ProfileFortythreePage();
      default:
        return DefaultWidget();
    }
  }
}
