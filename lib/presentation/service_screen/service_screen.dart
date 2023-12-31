import '../service_screen/widgets/userprofile2_item_widget.dart';
import '../service_screen/widgets/view_item_widget.dart';
import 'bloc/service_bloc.dart';
import 'models/service_model.dart';
import 'models/userprofile2_item_model.dart';
import 'models/view_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/presentation/profile_eightythree_page/profile_eightythree_page.dart';
import 'package:yka_app/presentation/profile_fortythree_page/profile_fortythree_page.dart';
import 'package:yka_app/presentation/var_eleven_tab_container_page/var_eleven_tab_container_page.dart';
import 'package:yka_app/presentation/var_six_page/var_six_page.dart';
import 'package:yka_app/widgets/app_bar/appbar_title_edittext.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_bottom_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

class ServiceScreen extends StatelessWidget {
  ServiceScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ServiceBloc>(
      create: (context) => ServiceBloc(ServiceState(
        serviceModelObj: ServiceModel(),
      ))
        ..add(ServiceInitialEvent()),
      child: ServiceScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 21.h,
                      right: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildAddDetails(context),
                        SizedBox(height: 24.v),
                        _buildView(context),
                        SizedBox(height: 25.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_explore_services".tr,
                            style: CustomTextStyles.titleMediumRubik,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        _buildUserProfile(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 63.v,
      title: Container(
        height: 40.v,
        width: 281.h,
        margin: EdgeInsets.only(left: 24.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 45.h,
                  right: 235.h,
                ),
                child: SizedBox(
                  height: 40.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: appTheme.blueGray100,
                  ),
                ),
              ),
            ),
            BlocSelector<ServiceBloc, ServiceState, TextEditingController?>(
              selector: (state) => state.riyadhController,
              builder: (context, riyadhController) {
                return AppbarTitleEdittext(
                  margin: EdgeInsets.symmetric(vertical: 1.v),
                  hintText: "lbl_riyadh".tr,
                  controller: riyadhController,
                );
              },
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildAddDetails(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 8.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGray10006.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 75.adaptSize,
            width: 75.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 18.v,
            ),
            padding: EdgeInsets.all(18.h),
            decoration: AppDecoration.outlineBlue.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder37,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgFi3781609,
              height: 34.adaptSize,
              width: 34.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 13.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_do_you_own_a_car".tr,
                  style: CustomTextStyles.titleSmallRubikBlack90005Bold,
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 164.h,
                  child: Text(
                    "msg_let_us_know_about2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                CustomElevatedButton(
                  height: 29.v,
                  width: 79.h,
                  text: "lbl_add_details".tr,
                  buttonStyle: CustomButtonStyles.fillBlueTL8,
                  buttonTextStyle: CustomTextStyles.labelMediumRubikWhiteA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 134.v,
      width: 327.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<ServiceBloc, ServiceState>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 134.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    state.sliderIndex = index;
                  },
                ),
                itemCount: state.serviceModelObj?.viewItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  ViewItemModel model =
                      state.serviceModelObj?.viewItemList[index] ??
                          ViewItemModel();
                  return ViewItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BlocBuilder<ServiceBloc, ServiceState>(
              builder: (context, state) {
                return Container(
                  height: 8.v,
                  margin: EdgeInsets.only(bottom: 10.v),
                  child: AnimatedSmoothIndicator(
                    activeIndex: state.sliderIndex,
                    count: state.serviceModelObj?.viewItemList.length ?? 0,
                    axisDirection: Axis.horizontal,
                    effect: ScrollingDotsEffect(
                      spacing: 8,
                      activeDotColor: appTheme.blue70001,
                      dotColor: appTheme.indigo10002,
                      dotHeight: 8.v,
                      dotWidth: 8.h,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return BlocSelector<ServiceBloc, ServiceState, ServiceModel?>(
      selector: (state) => state.serviceModelObj,
      builder: (context, serviceModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 107.v,
            crossAxisCount: 2,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: serviceModelObj?.userprofile2ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Userprofile2ItemModel model =
                serviceModelObj?.userprofile2ItemList[index] ??
                    Userprofile2ItemModel();
            return Userprofile2ItemWidget(
              model,
            );
          },
        );
      },
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
