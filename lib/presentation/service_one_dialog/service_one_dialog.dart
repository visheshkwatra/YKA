import 'bloc/service_one_bloc.dart';
import 'models/service_one_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ServiceOneDialog extends StatelessWidget {
  const ServiceOneDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ServiceOneBloc>(
      create: (context) => ServiceOneBloc(ServiceOneState(
        serviceOneModelObj: ServiceOneModel(),
      ))
        ..add(ServiceOneInitialEvent()),
      child: ServiceOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildNoVehiclesAdded(context),
    );
  }

  /// Section Widget
  Widget _buildNoVehiclesAdded(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24.h,
        right: 16.h,
        bottom: 421.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 66.h,
        vertical: 43.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_no_vehicles_added".tr,
            style: CustomTextStyles.titleLargeRubikMedium,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Text(
              "msg_add_vehicle_to_continue".tr,
              style: CustomTextStyles.bodyLargeRubikBlack90005,
            ),
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 70.h),
            child: CustomIconButton(
              height: 58.v,
              width: 56.h,
              child: CustomImageView(),
            ),
          ),
        ],
      ),
    );
  }
}
