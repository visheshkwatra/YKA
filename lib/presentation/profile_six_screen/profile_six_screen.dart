import 'bloc/profile_six_bloc.dart';import 'models/profile_six_model.dart';import 'package:flutter/material.dart';import 'package:yka_app/core/app_export.dart';import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';import 'package:yka_app/widgets/custom_elevated_button.dart';class ProfileSixScreen extends StatelessWidget {const ProfileSixScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ProfileSixBloc>(create: (context) => ProfileSixBloc(ProfileSixState(profileSixModelObj: ProfileSixModel()))..add(ProfileSixInitialEvent()), child: ProfileSixScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<ProfileSixBloc, ProfileSixState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 36.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 164.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_confirm_pin".tr, style: CustomTextStyles.headlineSmallRegular), TextSpan(text: "lbl_to_get_started".tr, style: theme.textTheme.headlineSmall)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), Container(width: 337.h, margin: EdgeInsets.only(right: 15.h), child: Text("msg_create_a_4_digit".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall!.copyWith(height: 1.57))), SizedBox(height: 83.v), CustomImageView(imagePath: ImageConstant.imgGroup1171275192, height: 16.v, width: 238.h, alignment: Alignment.center), SizedBox(height: 62.v), Align(alignment: Alignment.centerRight, child: Text("lbl_forgot_pin".tr, style: CustomTextStyles.titleSmallRed80001)), SizedBox(height: 27.v), CustomElevatedButton(text: "lbl_set_pin".tr, buttonStyle: CustomButtonStyles.fillIndigoTL13), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAppVersion(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.fromLTRB(20.h, 3.v, 325.h, 3.v), onTap: () {onTapClose(context);})); } 
/// Section Widget
Widget _buildAppVersion(BuildContext context) { return Container(margin: EdgeInsets.only(left: 139.h, right: 151.h, bottom: 26.v), decoration: AppDecoration.fillWhiteA700, child: Text("msg_app_version_4_4_9".tr.toUpperCase(), style: CustomTextStyles.labelMediumProximaNovaAlt)); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }