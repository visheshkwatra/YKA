import 'bloc/var_fortyfive_bloc.dart';
import 'models/var_fortyfive_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class VarFortyfiveBottomsheet extends StatelessWidget {
  const VarFortyfiveBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VarFortyfiveBloc>(
      create: (context) => VarFortyfiveBloc(VarFortyfiveState(
        varFortyfiveModelObj: VarFortyfiveModel(),
      ))
        ..add(VarFortyfiveInitialEvent()),
      child: VarFortyfiveBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildSelectCarRow(context);
  }

  /// Section Widget
  Widget _buildSelectCarRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 213.v),
            child: Text(
              "lbl_select_car".tr,
              style: CustomTextStyles.titleLargeDMSans,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 222.v,
            ),
            child: Container(
              height: 4.v,
              width: 113.h,
              decoration: BoxDecoration(
                color: appTheme.indigo5005,
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  2.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.65,
                  backgroundColor: appTheme.indigo5005,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
