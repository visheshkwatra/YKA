import 'bloc/profile_ten_bloc.dart';import 'models/profile_ten_model.dart';import 'package:flutter/material.dart';import 'package:yka_app/core/app_export.dart';import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';import 'package:yka_app/widgets/custom_elevated_button.dart';class ProfileTenScreen extends StatelessWidget {const ProfileTenScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ProfileTenBloc>(create: (context) => ProfileTenBloc(ProfileTenState(profileTenModelObj: ProfileTenModel()))..add(ProfileTenInitialEvent()), child: ProfileTenScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<ProfileTenBloc, ProfileTenState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 36.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 164.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_set_your_pin".tr, style: CustomTextStyles.headlineSmallRegular), TextSpan(text: "lbl_to_get_started".tr, style: theme.textTheme.headlineSmall)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), Container(width: 337.h, margin: EdgeInsets.only(right: 15.h), child: Text("msg_create_a_4_digit".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall!.copyWith(height: 1.57))), SizedBox(height: 64.v), Align(alignment: Alignment.center, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgGroup1171275192Red800, height: 16.v, width: 164.h, margin: EdgeInsets.only(top: 18.v, bottom: 19.v)), Padding(padding: EdgeInsets.only(left: 54.h), child: Text("lbl_7".tr, style: theme.textTheme.displayMedium))])), SizedBox(height: 90.v), _buildContinueSection(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAppVersion(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.fromLTRB(20.h, 3.v, 325.h, 3.v), onTap: () {onTapClose(context);})); } 
/// Section Widget
Widget _buildContinueSection(BuildContext context) { return SizedBox(height: 68.v, width: 353.h, child: Stack(alignment: Alignment.topCenter, children: [Opacity(opacity: 0.2, child: Align(alignment: Alignment.bottomCenter, child: Container(height: 54.v, width: 313.h, decoration: BoxDecoration(color: theme.colorScheme.primary.withOpacity(0.42), borderRadius: BorderRadius.circular(4.h))))), CustomElevatedButton(width: 353.h, text: "lbl_continue".tr, alignment: Alignment.topCenter)])); } 
/// Section Widget
Widget _buildAppVersion(BuildContext context) { return Container(margin: EdgeInsets.only(left: 139.h, right: 151.h, bottom: 26.v), decoration: AppDecoration.fillWhiteA700, child: Text("msg_app_version_4_4_9".tr.toUpperCase(), style: CustomTextStyles.labelMediumProximaNovaAlt)); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
