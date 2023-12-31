import '../models/recentlyviewed_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore: must_be_immutable
class RecentlyviewedItemWidget extends StatelessWidget {
  RecentlyviewedItemWidget(
    this.recentlyviewedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentlyviewedItemModel recentlyviewedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 236.v),
          child: Text(
            recentlyviewedItemModelObj.recentlyViewed!,
            style: CustomTextStyles.titleSmallGray70001,
          ),
        ),
      ),
    );
  }
}
