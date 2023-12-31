import 'bloc/profile_nineteen_bloc.dart';import 'models/profile_nineteen_model.dart';import 'package:flutter/material.dart';import 'package:yka_app/core/app_export.dart';import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';import 'package:yka_app/widgets/custom_checkbox_button.dart';import 'package:yka_app/widgets/custom_elevated_button.dart';import 'package:yka_app/widgets/custom_pin_code_text_field.dart';class ProfileNineteenScreen extends StatelessWidget {const ProfileNineteenScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ProfileNineteenBloc>(create: (context) => ProfileNineteenBloc(ProfileNineteenState(profileNineteenModelObj: ProfileNineteenModel()))..add(ProfileNineteenInitialEvent()), child: ProfileNineteenScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 37.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(width: 189.h, child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_otp_sent".tr, style: CustomTextStyles.headlineSmallRegular), TextSpan(text: "lbl_to_your_number".tr, style: theme.textTheme.headlineSmall)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), Container(width: 277.h, margin: EdgeInsets.only(right: 75.h), child: Text("msg_enter_the_4_digit".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall!.copyWith(height: 1.57))), SizedBox(height: 26.v), BlocSelector<ProfileNineteenBloc, ProfileNineteenState, TextEditingController?>(selector: (state) => state.otpController, builder: (context, otpController) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});}), SizedBox(height: 20.v), _buildDidnTReceiveOTP(context), SizedBox(height: 48.v), _buildIAgreeToTheTerms(context), SizedBox(height: 16.v), _buildContinue(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAppVersion(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.fromLTRB(20.h, 3.v, 325.h, 3.v), onTap: () {onTapClose(context);})); } 
/// Section Widget
Widget _buildDidnTReceiveOTP(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_didn_t_receive_otp2".tr, style: CustomTextStyles.bodySmallOpenSansBluegray50003), TextSpan(text: "lbl_00_30".tr, style: CustomTextStyles.labelLargeBluegray50003)]), textAlign: TextAlign.left)), Text("lbl_resend_otp".tr, style: CustomTextStyles.titleSmallRed800)]); } 
/// Section Widget
Widget _buildIAgreeToTheTerms(BuildContext context) { return BlocSelector<ProfileNineteenBloc, ProfileNineteenState, bool?>(selector: (state) => state.iAgreeToTheTerms, builder: (context, iAgreeToTheTerms) {return CustomCheckboxButton(text: "msg_i_agree_to_the_terms".tr, value: iAgreeToTheTerms, onChange: (value) {context.read<ProfileNineteenBloc>().add(ChangeCheckBoxEvent(value: value));});}); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return SizedBox(height: 68.v, width: 353.h, child: Stack(alignment: Alignment.topCenter, children: [Opacity(opacity: 0.2, child: Align(alignment: Alignment.bottomCenter, child: Container(height: 54.v, width: 313.h, decoration: BoxDecoration(color: theme.colorScheme.primary.withOpacity(0.42), borderRadius: BorderRadius.circular(4.h))))), CustomElevatedButton(width: 353.h, text: "lbl_continue".tr, alignment: Alignment.topCenter)])); } 
/// Section Widget
Widget _buildAppVersion(BuildContext context) { return Container(margin: EdgeInsets.only(left: 139.h, right: 151.h, bottom: 26.v), decoration: AppDecoration.fillWhiteA700, child: Text("msg_app_version_4_4_9".tr.toUpperCase(), style: CustomTextStyles.labelMediumProximaNovaAlt)); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
