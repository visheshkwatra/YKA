import '../models/widget5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Widget5ItemWidget extends StatelessWidget {
  Widget5ItemWidget(
    this.widget5ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Widget5ItemModel widget5ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.only(
          top: 11.v,
          right: 14.h,
          bottom: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          widget5ItemModelObj.widget!,
          style: TextStyle(
            color: (widget5ItemModelObj.isSelected ?? false)
                ? appTheme.whiteA700
                : appTheme.blueGray400,
            fontSize: 13.fSize,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: CustomImageView(
          imagePath: ImageConstant.imgFrameWhiteA700,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(right: 8.h),
        ),
        selected: (widget5ItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.red800,
        shape: (widget5ItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.gray20001,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
