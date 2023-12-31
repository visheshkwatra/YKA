import '../models/widget3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class Widget3ItemWidget extends StatelessWidget {
  Widget3ItemWidget(
    this.widget3ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Widget3ItemModel widget3ItemModelObj;

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
          widget3ItemModelObj.widget!,
          style: TextStyle(
            color: (widget3ItemModelObj.isSelected ?? false)
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
        selected: (widget3ItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.red800,
        shape: (widget3ItemModelObj.isSelected ?? false)
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
