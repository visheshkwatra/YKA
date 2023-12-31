import '../explore_tesla_one_bottomsheet/widgets/bhdchipview_item_widget.dart';
import '../explore_tesla_one_bottomsheet/widgets/carselectorgrid_item_widget.dart';
import '../explore_tesla_one_bottomsheet/widgets/petrol_item_widget.dart';
import 'bloc/explore_tesla_one_bloc.dart';
import 'models/bhdchipview_item_model.dart';
import 'models/carselectorgrid_item_model.dart';
import 'models/explore_tesla_one_model.dart';
import 'models/petrol_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ExploreTeslaOneBottomsheet extends StatelessWidget {
  const ExploreTeslaOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreTeslaOneBloc>(
      create: (context) => ExploreTeslaOneBloc(ExploreTeslaOneState(
        exploreTeslaOneModelObj: ExploreTeslaOneModel(),
      ))
        ..add(ExploreTeslaOneInitialEvent()),
      child: ExploreTeslaOneBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 31.v,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "lbl_filter".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
            SizedBox(height: 25.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "lbl_select_car_type".tr,
                  style: CustomTextStyles.titleSmallGray70001,
                ),
              ),
            ),
            SizedBox(height: 15.v),
            _buildCarSelectorGrid(context),
            SizedBox(height: 17.v),
            _buildBhdChipView(context),
            SizedBox(height: 46.v),
            _buildFuelTypeColumn(context),
            SizedBox(height: 65.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCarSelectorGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: BlocSelector<ExploreTeslaOneBloc, ExploreTeslaOneState,
          ExploreTeslaOneModel?>(
        selector: (state) => state.exploreTeslaOneModelObj,
        builder: (context, exploreTeslaOneModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 409.v,
              crossAxisCount: 1,
              mainAxisSpacing: 1.h,
              crossAxisSpacing: 1.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                exploreTeslaOneModelObj?.carselectorgridItemList.length ?? 0,
            itemBuilder: (context, index) {
              CarselectorgridItemModel model =
                  exploreTeslaOneModelObj?.carselectorgridItemList[index] ??
                      CarselectorgridItemModel();
              return CarselectorgridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBhdChipView(BuildContext context) {
    return BlocSelector<ExploreTeslaOneBloc, ExploreTeslaOneState,
        ExploreTeslaOneModel?>(
      selector: (state) => state.exploreTeslaOneModelObj,
      builder: (context, exploreTeslaOneModelObj) {
        return Wrap(
          runSpacing: 16.v,
          spacing: 16.h,
          children: List<Widget>.generate(
            exploreTeslaOneModelObj?.bhdchipviewItemList.length ?? 0,
            (index) {
              BhdchipviewItemModel model =
                  exploreTeslaOneModelObj?.bhdchipviewItemList[index] ??
                      BhdchipviewItemModel();

              return BhdchipviewItemWidget(
                model,
                onSelectedChipView: (value) {
                  context.read<ExploreTeslaOneBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                },
              );
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFuelTypeColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_fuel_type".tr,
            style: CustomTextStyles.titleSmallGray70001,
          ),
          SizedBox(height: 15.v),
          BlocSelector<ExploreTeslaOneBloc, ExploreTeslaOneState,
              ExploreTeslaOneModel?>(
            selector: (state) => state.exploreTeslaOneModelObj,
            builder: (context, exploreTeslaOneModelObj) {
              return Wrap(
                runSpacing: 16.v,
                spacing: 16.h,
                children: List<Widget>.generate(
                  exploreTeslaOneModelObj?.petrolItemList.length ?? 0,
                  (index) {
                    PetrolItemModel model =
                        exploreTeslaOneModelObj?.petrolItemList[index] ??
                            PetrolItemModel();

                    return PetrolItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<ExploreTeslaOneBloc>().add(
                            UpdateChipView1Event(
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
}
