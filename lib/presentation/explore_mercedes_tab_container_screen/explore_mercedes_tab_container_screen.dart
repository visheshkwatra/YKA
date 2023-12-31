import 'bloc/explore_mercedes_tab_container_bloc.dart';import 'models/explore_mercedes_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:yka_app/core/app_export.dart';import 'package:yka_app/presentation/explore_mercedes_page/explore_mercedes_page.dart';import 'package:yka_app/presentation/explore_tesla_page/explore_tesla_page.dart';import 'package:yka_app/widgets/custom_icon_button.dart';class ExploreMercedesTabContainerScreen extends StatefulWidget {const ExploreMercedesTabContainerScreen({Key? key}) : super(key: key);

@override ExploreMercedesTabContainerScreenState createState() =>  ExploreMercedesTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<ExploreMercedesTabContainerBloc>(create: (context) => ExploreMercedesTabContainerBloc(ExploreMercedesTabContainerState(exploreMercedesTabContainerModelObj: ExploreMercedesTabContainerModel()))..add(ExploreMercedesTabContainerInitialEvent()), child: ExploreMercedesTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ExploreMercedesTabContainerScreenState extends State<ExploreMercedesTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<ExploreMercedesTabContainerBloc, ExploreMercedesTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: SingleChildScrollView(child: Column(children: [_buildExploreMercedesRow(context), SizedBox(height: 840.v, child: TabBarView(controller: tabviewController, children: [ExploreMercedesPage(), ExploreTeslaPage()]))])))));}); } 
/// Section Widget
Widget _buildExploreMercedesRow(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 17.h), decoration: AppDecoration.fillBlack.copyWith(borderRadius: BorderRadiusStyle.customBorderBL20), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [Container(height: 78.v, width: 253.h, margin: EdgeInsets.only(top: 21.v), child: Stack(alignment: Alignment.topLeft, children: [Opacity(opacity: 0.1, child: CustomImageView(imagePath: ImageConstant.imgMaskGroup78x153, height: 78.v, width: 153.h, alignment: Alignment.centerRight)), Align(alignment: Alignment.topLeft, child: Container(width: 205.h, margin: EdgeInsets.only(top: 9.v, right: 48.h, bottom: 19.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 49.v, width: 48.h, onTap: () {onTapBtnClose(context);}, child: CustomImageView(imagePath: ImageConstant.imgCloseWhiteA700)), Padding(padding: EdgeInsets.only(top: 14.v, bottom: 10.v), child: Text("lbl_infiniti".tr, style: CustomTextStyles.titleMediumDMSansWhiteA700))])))])), Container(height: 36.v, width: 101.h, margin: EdgeInsets.only(left: 2.h, top: 40.v, bottom: 24.v), decoration: BoxDecoration(color: appTheme.whiteA700, borderRadius: BorderRadius.circular(18.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.whiteA700, labelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Open Sans', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.black90005, unselectedLabelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Open Sans', fontWeight: FontWeight.w700), indicatorPadding: EdgeInsets.all(4.0.h), indicator: BoxDecoration(color: appTheme.black90005, borderRadius: BorderRadius.circular(14.h)), tabs: [Tab(child: Text("lbl_new".tr)), Tab(child: Text("lbl_old".tr))]))])); } 

/// Navigates to the previous screen.
onTapBtnClose(BuildContext context) { NavigatorService.goBack(); } 
 }