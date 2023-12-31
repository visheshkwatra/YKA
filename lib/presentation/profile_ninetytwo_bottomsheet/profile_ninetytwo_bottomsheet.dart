import '../profile_ninetytwo_bottomsheet/widgets/widget5_item_widget.dart';
import 'bloc/profile_ninetytwo_bloc.dart';
import 'models/profile_ninetytwo_model.dart';
import 'models/widget5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';
import 'package:yka_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileNinetytwoBottomsheet extends StatelessWidget {
  const ProfileNinetytwoBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileNinetytwoBloc>(
      create: (context) => ProfileNinetytwoBloc(ProfileNinetytwoState(
        profileNinetytwoModelObj: ProfileNinetytwoModel(),
      ))
        ..add(ProfileNinetytwoInitialEvent()),
      child: ProfileNinetytwoBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.v),
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
            _buildChangeRow(context),
            SizedBox(height: 22.v),
            Divider(
              color: appTheme.gray10006,
              indent: 25.h,
              endIndent: 20.h,
            ),
            SizedBox(height: 21.v),
            _buildSaveAsColumn(context),
            SizedBox(height: 20.v),
            _buildHouseFlatBlockNoEditText(context),
            SizedBox(height: 16.v),
            _buildApartmentRoadAreaEditText(context),
            SizedBox(height: 16.v),
            _buildLandmarkEditText(context),
            SizedBox(height: 16.v),
            _buildDescriptionEditText(context),
            SizedBox(height: 25.v),
            _buildNextRow(context),
            SizedBox(height: 77.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChangeButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 32.v,
      width: 69.h,
      text: "lbl_change".tr,
      margin: EdgeInsets.only(
        left: 29.h,
        top: 11.v,
        bottom: 4.v,
      ),
      buttonStyle: CustomButtonStyles.outlineRedTL6,
      buttonTextStyle: CustomTextStyles.labelLargeRed800Bold_2,
    );
  }

  /// Section Widget
  Widget _buildChangeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
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
              "msg_462_n_glenn_ave".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMedium_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
          _buildChangeButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveAsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_save_as".tr,
            style: CustomTextStyles.titleSmallGray70001,
          ),
          SizedBox(height: 14.v),
          BlocSelector<ProfileNinetytwoBloc, ProfileNinetytwoState,
              ProfileNinetytwoModel?>(
            selector: (state) => state.profileNinetytwoModelObj,
            builder: (context, profileNinetytwoModelObj) {
              return Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children: List<Widget>.generate(
                  profileNinetytwoModelObj?.widget5ItemList.length ?? 0,
                  (index) {
                    Widget5ItemModel model =
                        profileNinetytwoModelObj?.widget5ItemList[index] ??
                            Widget5ItemModel();

                    return Widget5ItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<ProfileNinetytwoBloc>().add(
                            UpdateChipViewEvent(
                                index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHouseFlatBlockNoEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<ProfileNinetytwoBloc, ProfileNinetytwoState,
          TextEditingController?>(
        selector: (state) => state.houseFlatBlockNoEditTextController,
        builder: (context, houseFlatBlockNoEditTextController) {
          return CustomTextFormField(
            controller: houseFlatBlockNoEditTextController,
            hintText: "msg_house_flat_block".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildApartmentRoadAreaEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<ProfileNinetytwoBloc, ProfileNinetytwoState,
          TextEditingController?>(
        selector: (state) => state.apartmentRoadAreaEditTextController,
        builder: (context, apartmentRoadAreaEditTextController) {
          return CustomTextFormField(
            controller: apartmentRoadAreaEditTextController,
            hintText: "msg_apartment_road".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildLandmarkEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<ProfileNinetytwoBloc, ProfileNinetytwoState,
          TextEditingController?>(
        selector: (state) => state.landmarkEditTextController,
        builder: (context, landmarkEditTextController) {
          return CustomTextFormField(
            controller: landmarkEditTextController,
            hintText: "lbl_landmark".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<ProfileNinetytwoBloc, ProfileNinetytwoState,
          TextEditingController?>(
        selector: (state) => state.descriptionEditTextController,
        builder: (context, descriptionEditTextController) {
          return CustomTextFormField(
            controller: descriptionEditTextController,
            hintText: "lbl_description".tr,
            textInputAction: TextInputAction.done,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildNextRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup1171275205,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              top: 1.v,
              bottom: 25.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_next".tr,
                  style: CustomTextStyles.titleSmallIndigo300,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_confirmation".tr,
                  style: CustomTextStyles.titleMediumWhiteA700_1,
                ),
              ],
            ),
          ),
          Container(
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(bottom: 22.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Opacity(
                  opacity: 0.4,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 37.adaptSize,
                      width: 37.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700.withOpacity(0.49),
                        borderRadius: BorderRadius.circular(
                          18.h,
                        ),
                      ),
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  decoration: IconButtonStyleHelper.fillWhiteATL25,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowrightRed800,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
