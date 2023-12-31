import 'bloc/profile_fiftytwo_bloc.dart';
import 'models/profile_fiftytwo_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileFiftytwoBottomsheet extends StatelessWidget {
  const ProfileFiftytwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFiftytwoBloc>(
      create: (context) => ProfileFiftytwoBloc(ProfileFiftytwoState(
        profileFiftytwoModelObj: ProfileFiftytwoModel(),
      ))
        ..add(ProfileFiftytwoInitialEvent()),
      child: ProfileFiftytwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildChangeSection(context);
  }

  /// Section Widget
  Widget _buildChangeSection(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 4.v,
              width: 32.h,
              decoration: BoxDecoration(
                color: appTheme.gray30003,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedin,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 9.v,
                    ),
                  ),
                  Container(
                    width: 212.h,
                    margin: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "msg_462_n_glenn_ave2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMedium_1.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomOutlinedButton(
                    height: 28.v,
                    width: 61.h,
                    text: "lbl_change".tr,
                    margin: EdgeInsets.only(
                      top: 13.v,
                      bottom: 6.v,
                    ),
                    buttonStyle: CustomButtonStyles.outlineRedTL6,
                    buttonTextStyle: CustomTextStyles.labelLargeRed800Bold_2,
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.v),
            SizedBox(
              height: 68.v,
              width: 353.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Opacity(
                    opacity: 0.2,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 54.v,
                        width: 313.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(0.42),
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomElevatedButton(
                    width: 353.h,
                    text: "msg_add_address_details".tr,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
            ),
            SizedBox(height: 36.v),
          ],
        ),
      ),
    );
  }
}
