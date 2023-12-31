import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(
          key: key,
        );

  String? hintText;

  TextEditingController? controller;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomTextFormField(
        width: 281.h,
        controller: controller,
        hintText: "lbl_riyadh".tr,
        hintStyle: CustomTextStyles.titleSmallRubikBlue70001,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(10.h, 8.v, 24.h, 6.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrameBlue70001,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 38.v,
        ),
      ),
    );
  }
}
