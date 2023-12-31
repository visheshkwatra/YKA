import 'bloc/profile_sixtyeight_bloc.dart';
import 'models/profile_sixtyeight_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileSixtyeightBottomsheet extends StatelessWidget {
  const ProfileSixtyeightBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSixtyeightBloc>(
      create: (context) => ProfileSixtyeightBloc(ProfileSixtyeightState(
        profileSixtyeightModelObj: ProfileSixtyeightModel(),
      ))
        ..add(ProfileSixtyeightInitialEvent()),
      child: ProfileSixtyeightBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 180.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder40,
        ),
        child: Container(
          height: 4.v,
          width: 32.h,
          decoration: BoxDecoration(
            color: appTheme.gray30003,
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
        ),
      ),
    );
  }
}
