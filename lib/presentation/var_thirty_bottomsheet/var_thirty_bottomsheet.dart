import '../var_thirty_bottomsheet/widgets/userprofile10_item_widget.dart';
import 'bloc/var_thirty_bloc.dart';
import 'models/userprofile10_item_model.dart';
import 'models/var_thirty_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class VarThirtyBottomsheet extends StatelessWidget {
  const VarThirtyBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VarThirtyBloc>(
      create: (context) => VarThirtyBloc(VarThirtyState(
        varThirtyModelObj: VarThirtyModel(),
      ))
        ..add(VarThirtyInitialEvent()),
      child: VarThirtyBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "lbl_choose_language".tr,
              style: CustomTextStyles.titleLargeDMSans,
            ),
          ),
          SizedBox(height: 21.v),
          BlocSelector<VarThirtyBloc, VarThirtyState, VarThirtyModel?>(
            selector: (state) => state.varThirtyModelObj,
            builder: (context, varThirtyModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 16.v,
                  );
                },
                itemCount: varThirtyModelObj?.userprofile10ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Userprofile10ItemModel model =
                      varThirtyModelObj?.userprofile10ItemList[index] ??
                          Userprofile10ItemModel();
                  return Userprofile10ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 36.v),
          SizedBox(
            height: 68.v,
            width: 352.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 54.v,
                      width: 313.h,
                      margin: EdgeInsets.only(left: 14.h),
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
                  width: 352.h,
                  text: "lbl_continue".tr,
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
