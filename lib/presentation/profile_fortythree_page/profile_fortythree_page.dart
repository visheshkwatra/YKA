import '../profile_fortythree_page/widgets/bookingstext_item_widget.dart';
import 'bloc/profile_fortythree_bloc.dart';
import 'models/bookingstext_item_model.dart';
import 'models/profile_fortythree_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileFortythreePage extends StatelessWidget {
  const ProfileFortythreePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFortythreeBloc>(
      create: (context) => ProfileFortythreeBloc(ProfileFortythreeState(
        profileFortythreeModelObj: ProfileFortythreeModel(),
      ))
        ..add(ProfileFortythreeInitialEvent()),
      child: ProfileFortythreePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              _buildProfileImage(context),
              SizedBox(height: 27.v),
              _buildMenuOptions(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileImage(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.gradientRedAToRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 13.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 123.h),
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outlineWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder51,
            ),
            child: Container(
              height: 96.adaptSize,
              width: 96.adaptSize,
              decoration: AppDecoration.outlineWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder48,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgBitmap,
                height: 96.adaptSize,
                width: 96.adaptSize,
                radius: BorderRadius.circular(
                  48.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_ahmad_rashi".tr,
            style: CustomTextStyles.titleLargeWhiteA700,
          ),
          SizedBox(height: 3.v),
          Text(
            "lbl_edit_profile".tr,
            style: CustomTextStyles.titleMediumWhiteA700SemiBold,
          ),
          SizedBox(height: 32.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFi6939131,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    bottom: 5.v,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 1.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "msg_roadside_rescure".tr,
                              style: CustomTextStyles.titleSmallWhiteA700Bold15,
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgCheckmarkWhiteA70058x58,
                              height: 8.v,
                              width: 4.h,
                              margin: EdgeInsets.only(
                                left: 11.h,
                                top: 7.v,
                                bottom: 5.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.v),
                        Text(
                          "msg_your_trusted_companion".tr,
                          style: CustomTextStyles.bodySmallOpenSansWhiteA700,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20.v,
              width: 98.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: SizedBox(
                        width: 98.h,
                        child: Divider(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_my_menu".tr,
                      style: CustomTextStyles.titleSmallGray70001,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            BlocSelector<ProfileFortythreeBloc, ProfileFortythreeState,
                ProfileFortythreeModel?>(
              selector: (state) => state.profileFortythreeModelObj,
              builder: (context, profileFortythreeModelObj) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 113.v,
                    crossAxisCount: 3,
                    mainAxisSpacing: 12.h,
                    crossAxisSpacing: 12.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                      profileFortythreeModelObj?.bookingstextItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    BookingstextItemModel model = profileFortythreeModelObj
                            ?.bookingstextItemList[index] ??
                        BookingstextItemModel();
                    return BookingstextItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuOptions(BuildContext context) {
    return SizedBox(
      height: 272.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
            ),
          ),
          _buildLine(context),
        ],
      ),
    );
  }
}
