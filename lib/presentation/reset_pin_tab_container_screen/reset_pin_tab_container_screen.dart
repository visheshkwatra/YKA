import 'bloc/reset_pin_tab_container_bloc.dart';import 'models/reset_pin_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:yka_app/core/app_export.dart';import 'package:yka_app/presentation/profile_eightythree_page/profile_eightythree_page.dart';import 'package:yka_app/presentation/profile_fortythree_page/profile_fortythree_page.dart';import 'package:yka_app/presentation/reset_pin_page/reset_pin_page.dart';import 'package:yka_app/presentation/var_eleven_tab_container_page/var_eleven_tab_container_page.dart';import 'package:yka_app/presentation/var_six_page/var_six_page.dart';import 'package:yka_app/widgets/app_bar/appbar_leading_image.dart';import 'package:yka_app/widgets/app_bar/appbar_subtitle_three.dart';import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';import 'package:yka_app/widgets/custom_bottom_bar.dart';import 'package:yka_app/widgets/custom_search_view.dart';class ResetPinTabContainerScreen extends StatefulWidget {const ResetPinTabContainerScreen({Key? key}) : super(key: key);

@override ResetPinTabContainerScreenState createState() =>  ResetPinTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<ResetPinTabContainerBloc>(create: (context) => ResetPinTabContainerBloc(ResetPinTabContainerState(resetPinTabContainerModelObj: ResetPinTabContainerModel()))..add(ResetPinTabContainerInitialEvent()), child: ResetPinTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ResetPinTabContainerScreenState extends State<ResetPinTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: 375.h, child: Column(children: [SizedBox(height: 5.v), Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: BlocSelector<ResetPinTabContainerBloc, ResetPinTabContainerState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "lbl_search_location".tr, borderDecoration: SearchViewStyleHelper.fillGray, fillColor: appTheme.gray10003);})), SizedBox(height: 16.v), _buildTabview(context), Expanded(child: SizedBox(height: 562.v, child: TabBarView(controller: tabviewController, children: [ResetPinPage(), ResetPinPage(), ResetPinPage()])))])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 50.v, leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 20.h, top: 13.v, bottom: 13.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleThree(text: "lbl_nearby_centres".tr)); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 40.v, width: 355.h, child: TabBar(controller: tabviewController, isScrollable: true, tabs: [Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Container(height: 40.v, width: 48.h, padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 7.v), decoration: AppDecoration.outlineGray20004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: CustomImageView(imagePath: ImageConstant.imgFrameBlack9000524x24, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)), Container(width: 135.h, margin: EdgeInsets.only(left: 10.h), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v), decoration: AppDecoration.outlineGray20004.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Text("msg_pickup_delivery".tr))])), Tab(child: Text("lbl_last_visited".tr)), Tab(child: Text("lbl_best_rated".tr))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.varElevenTabContainerPage; case BottomBarEnum.Findus: return AppRoutes.profileEightythreePage; case BottomBarEnum.Services: return AppRoutes.varSixPage; case BottomBarEnum.Profile: return AppRoutes.profileFortythreePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.varElevenTabContainerPage: return VarElevenTabContainerPage(); case AppRoutes.profileEightythreePage: return ProfileEightythreePage(); case AppRoutes.varSixPage: return VarSixPage(); case AppRoutes.profileFortythreePage: return ProfileFortythreePage(); default: return DefaultWidget();} } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
