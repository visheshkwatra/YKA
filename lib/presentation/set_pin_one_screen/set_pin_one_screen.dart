import 'bloc/set_pin_one_bloc.dart';
import 'models/set_pin_one_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_pin_code_text_field.dart';

class SetPinOneScreen extends StatelessWidget {
  const SetPinOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SetPinOneBloc>(
      create: (context) => SetPinOneBloc(SetPinOneState(
        setPinOneModelObj: SetPinOneModel(),
      ))
        ..add(SetPinOneInitialEvent()),
      child: SetPinOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: 375.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 53.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_reset_pin".tr,
                style: CustomTextStyles.titleLargeRubikGray80002,
              ),
              SizedBox(height: 15.v),
              Text(
                "msg_enter_your_security".tr,
                style: CustomTextStyles.bodyMediumRubikOnPrimaryContainer,
              ),
              SizedBox(height: 30.v),
              BlocSelector<SetPinOneBloc, SetPinOneState,
                  TextEditingController?>(
                selector: (state) => state.otpController,
                builder: (context, otpController) {
                  return CustomPinCodeTextField(
                    context: context,
                    controller: otpController,
                    onChanged: (value) {
                      otpController?.text = value;
                    },
                  );
                },
              ),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                height: 52.v,
                text: "lbl_set_pin".tr,
                buttonStyle: CustomButtonStyles.fillBlue,
                buttonTextStyle: CustomTextStyles.titleMediumRubikWhiteA700,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgClockBlack9000553x56,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 1.v,
          bottom: 1.v,
        ),
      ),
      actions: [
        AppbarSubtitleFive(
          text: "lbl_step_3_of_3".tr,
          margin: EdgeInsets.fromLTRB(20.h, 24.v, 20.h, 14.v),
        ),
      ],
    );
  }
}
