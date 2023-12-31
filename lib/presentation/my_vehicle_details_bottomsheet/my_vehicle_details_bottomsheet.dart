import '../my_vehicle_details_bottomsheet/widgets/yearcomponent_item_widget.dart';
import 'bloc/my_vehicle_details_bloc.dart';
import 'models/my_vehicle_details_model.dart';
import 'models/yearcomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyVehicleDetailsBottomsheet extends StatelessWidget {
  const MyVehicleDetailsBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyVehicleDetailsBloc>(
      create: (context) => MyVehicleDetailsBloc(MyVehicleDetailsState(
        myVehicleDetailsModelObj: MyVehicleDetailsModel(),
      ))
        ..add(MyVehicleDetailsInitialEvent()),
      child: MyVehicleDetailsBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFordDetailsSection(context),
          SizedBox(height: 15.v),
          _buildOverviewSection(context),
          SizedBox(height: 66.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFordSection(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 187.v,
          width: 343.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_ford2".tr,
                        style: CustomTextStyles.openSansWhiteA700,
                      ),
                      SizedBox(height: 28.v),
                      Container(
                        height: 36.v,
                        width: 342.h,
                        decoration: BoxDecoration(
                          color: appTheme.indigo5003,
                          borderRadius: BorderRadius.circular(
                            171.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage5273,
                height: 103.v,
                width: 342.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 13.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 32.v),
        Container(
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
              value: 0.29,
              backgroundColor: appTheme.indigo5005,
              valueColor: AlwaysStoppedAnimation<Color>(
                theme.colorScheme.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFordDetailsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 9.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder30,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup433,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 38.v),
          _buildFordSection(context),
          SizedBox(height: 33.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_ford".tr,
                  style: CustomTextStyles.titleLargeRegular,
                ),
                TextSpan(
                  text: "lbl_mustang_coupe".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 4.v),
          Text(
            "msg_1a2932832999239021s".tr,
            style: CustomTextStyles.bodyLargeBluegray600,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOverviewSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_overview".tr,
            style: CustomTextStyles.titleSmallGray90003,
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 98.v,
            child: BlocSelector<MyVehicleDetailsBloc, MyVehicleDetailsState,
                MyVehicleDetailsModel?>(
              selector: (state) => state.myVehicleDetailsModelObj,
              builder: (context, myVehicleDetailsModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 12.h,
                    );
                  },
                  itemCount:
                      myVehicleDetailsModelObj?.yearcomponentItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    YearcomponentItemModel model = myVehicleDetailsModelObj
                            ?.yearcomponentItemList[index] ??
                        YearcomponentItemModel();
                    return YearcomponentItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
