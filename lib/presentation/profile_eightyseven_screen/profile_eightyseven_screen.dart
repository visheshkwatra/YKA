import 'bloc/profile_eightyseven_bloc.dart';
import 'models/profile_eightyseven_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';

class ProfileEightysevenScreen extends StatelessWidget {
  const ProfileEightysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightysevenBloc>(
      create: (context) => ProfileEightysevenBloc(ProfileEightysevenState(
        profileEightysevenModelObj: ProfileEightysevenModel(),
      ))
        ..add(ProfileEightysevenInitialEvent()),
      child: ProfileEightysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileEightysevenBloc, ProfileEightysevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 20.v),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 353.h,
                        child: Text(
                          "msg_lorem_ipsum_dolor".tr,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyMediumGray70006.copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      SizedBox(
                        width: 353.h,
                        child: Text(
                          "msg_lorem_ipsum_dolor".tr,
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyMediumGray70006.copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      SizedBox(
                        width: 353.h,
                        child: Text(
                          "msg_lorem_ipsum_dolor".tr,
                          maxLines: 8,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: CustomTextStyles.bodyMediumGray70006.copyWith(
                            height: 1.60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 100.v,
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgSettings,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 31.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_about_us".tr,
      ),
      styleType: Style.bgFill,
    );
  }
}
