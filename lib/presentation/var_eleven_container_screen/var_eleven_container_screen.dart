import 'bloc/var_eleven_container_bloc.dart';import 'models/var_eleven_container_model.dart';import 'package:flutter/material.dart';import 'package:yka_app/core/app_export.dart';import 'package:yka_app/presentation/profile_eightythree_page/profile_eightythree_page.dart';import 'package:yka_app/presentation/profile_fortythree_page/profile_fortythree_page.dart';import 'package:yka_app/presentation/var_eleven_tab_container_page/var_eleven_tab_container_page.dart';import 'package:yka_app/presentation/var_six_page/var_six_page.dart';import 'package:yka_app/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class VarElevenContainerScreen extends StatelessWidget {VarElevenContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<VarElevenContainerBloc>(create: (context) => VarElevenContainerBloc(VarElevenContainerState(varElevenContainerModelObj: VarElevenContainerModel()))..add(VarElevenContainerInitialEvent()), child: VarElevenContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<VarElevenContainerBloc, VarElevenContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: Navigator(key: navigatorKey, initialRoute: AppRoutes.varElevenTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.varElevenTabContainerPage; case BottomBarEnum.Findus: return AppRoutes.profileEightythreePage; case BottomBarEnum.Services: return AppRoutes.varSixPage; case BottomBarEnum.Profile: return AppRoutes.profileFortythreePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.varElevenTabContainerPage: return VarElevenTabContainerPage(); case AppRoutes.profileEightythreePage: return ProfileEightythreePage(); case AppRoutes.varSixPage: return VarSixPage(); case AppRoutes.profileFortythreePage: return ProfileFortythreePage(); default: return DefaultWidget();} } 
 }
