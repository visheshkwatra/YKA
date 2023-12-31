import '../profile_thirtyseven_bottomsheet/widgets/widget_item_widget.dart';
import 'bloc/profile_thirtyseven_bloc.dart';
import 'models/profile_thirtyseven_model.dart';
import 'models/widget_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';
import 'package:yka_app/widgets/custom_outlined_button.dart';
import 'package:yka_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileThirtysevenBottomsheet extends StatelessWidget {
  const ProfileThirtysevenBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileThirtysevenBloc>(
      create: (context) => ProfileThirtysevenBloc(ProfileThirtysevenState(
        profileThirtysevenModelObj: ProfileThirtysevenModel(),
      ))
        ..add(ProfileThirtysevenInitialEvent()),
      child: ProfileThirtysevenBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
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
          ),
          SizedBox(height: 21.v),
          _buildSaveAsColumn(context),
          SizedBox(height: 20.v),
          _buildHouseFlatBlockNoEditText(context),
          SizedBox(height: 16.v),
          _buildApartmentRoadAreaEditText(context),
          SizedBox(height: 16.v),
          _buildLandmarkOptionalEditText(context),
          SizedBox(height: 16.v),
          _buildDescriptionOptionalEditText(context),
          SizedBox(height: 33.v),
          _buildSaveAddressStack(context),
          SizedBox(height: 10.v),
        ],
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
    return Row(
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
    );
  }

  /// Section Widget
  Widget _buildSaveAsColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_save_as".tr,
          style: CustomTextStyles.titleSmallGray70001,
        ),
        SizedBox(height: 14.v),
        BlocSelector<ProfileThirtysevenBloc, ProfileThirtysevenState,
            ProfileThirtysevenModel?>(
          selector: (state) => state.profileThirtysevenModelObj,
          builder: (context, profileThirtysevenModelObj) {
            return Wrap(
              runSpacing: 16.v,
              spacing: 16.h,
              children: List<Widget>.generate(
                profileThirtysevenModelObj?.widgetItemList.length ?? 0,
                (index) {
                  WidgetItemModel model =
                      profileThirtysevenModelObj?.widgetItemList[index] ??
                          WidgetItemModel();

                  return WidgetItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<ProfileThirtysevenBloc>().add(
                          UpdateChipViewEvent(index: index, isSelected: value));
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHouseFlatBlockNoEditText(BuildContext context) {
    return BlocSelector<ProfileThirtysevenBloc, ProfileThirtysevenState,
        TextEditingController?>(
      selector: (state) => state.houseFlatBlockNoEditTextController,
      builder: (context, houseFlatBlockNoEditTextController) {
        return CustomTextFormField(
          controller: houseFlatBlockNoEditTextController,
          hintText: "msg_house_flat_block".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildApartmentRoadAreaEditText(BuildContext context) {
    return BlocSelector<ProfileThirtysevenBloc, ProfileThirtysevenState,
        TextEditingController?>(
      selector: (state) => state.apartmentRoadAreaEditTextController,
      builder: (context, apartmentRoadAreaEditTextController) {
        return CustomTextFormField(
          controller: apartmentRoadAreaEditTextController,
          hintText: "msg_apartment_road".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLandmarkOptionalEditText(BuildContext context) {
    return BlocSelector<ProfileThirtysevenBloc, ProfileThirtysevenState,
        TextEditingController?>(
      selector: (state) => state.landmarkOptionalEditTextController,
      builder: (context, landmarkOptionalEditTextController) {
        return CustomTextFormField(
          controller: landmarkOptionalEditTextController,
          hintText: "msg_landmark_optional".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDescriptionOptionalEditText(BuildContext context) {
    return BlocSelector<ProfileThirtysevenBloc, ProfileThirtysevenState,
        TextEditingController?>(
      selector: (state) => state.descriptionOptionalEditTextController,
      builder: (context, descriptionOptionalEditTextController) {
        return CustomTextFormField(
          controller: descriptionOptionalEditTextController,
          hintText: "msg_description_optional".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSaveAddress(BuildContext context) {
    return CustomElevatedButton(
      width: 353.h,
      text: "lbl_save_address".tr,
      alignment: Alignment.topCenter,
    );
  }

  /// Section Widget
  Widget _buildSaveAddressStack(BuildContext context) {
    return SizedBox(
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
          _buildSaveAddress(context),
        ],
      ),
    );
  }
}
