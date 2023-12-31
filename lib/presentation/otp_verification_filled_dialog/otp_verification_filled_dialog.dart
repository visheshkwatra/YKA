import 'bloc/otp_verification_filled_bloc.dart';
import 'models/otp_verification_filled_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OtpVerificationFilledDialog extends StatelessWidget {
  const OtpVerificationFilledDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpVerificationFilledBloc>(
      create: (context) => OtpVerificationFilledBloc(OtpVerificationFilledState(
        otpVerificationFilledModelObj: OtpVerificationFilledModel(),
      ))
        ..add(OtpVerificationFilledInitialEvent()),
      child: OtpVerificationFilledDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 295.h,
      padding: EdgeInsets.symmetric(
        horizontal: 40.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 14.v),
          Container(
            height: 74.adaptSize,
            width: 74.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 26.v,
            ),
            decoration: AppDecoration.fillTeal600.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder37,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCheckmarkWhiteA700,
              height: 18.v,
              width: 27.h,
              alignment: Alignment.bottomLeft,
            ),
          ),
          SizedBox(height: 28.v),
          Text(
            "lbl_pin_updated2".tr,
            style: CustomTextStyles.titleLargeRubik,
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 193.h,
              margin: EdgeInsets.only(
                left: 5.h,
                right: 15.h,
              ),
              child: Text(
                "msg_lorem_ipsum_dolor3".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumRubikBlack90005.copyWith(
                  height: 1.57,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.v),
          SizedBox(
            height: 48.v,
            width: 215.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 37.v,
                    width: 159.h,
                    decoration: BoxDecoration(
                      color: appTheme.blue70001,
                      borderRadius: BorderRadius.circular(
                        18.h,
                      ),
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: 48.v,
                  width: 215.h,
                  text: "lbl_login".tr,
                  buttonStyle: CustomButtonStyles.fillBlue,
                  buttonTextStyle: CustomTextStyles.titleMediumRubikWhiteA700,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
