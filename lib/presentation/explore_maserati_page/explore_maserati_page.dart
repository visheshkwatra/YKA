import '../explore_maserati_page/widgets/viewhierarchysection_item_widget.dart';
import 'bloc/explore_maserati_bloc.dart';
import 'models/explore_maserati_model.dart';
import 'models/viewhierarchysection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/custom_drop_down.dart';
import 'package:yka_app/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ExploreMaseratiPage extends StatefulWidget {
  const ExploreMaseratiPage({Key? key})
      : super(
          key: key,
        );

  @override
  ExploreMaseratiPageState createState() => ExploreMaseratiPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreMaseratiBloc>(
      create: (context) => ExploreMaseratiBloc(ExploreMaseratiState(
        exploreMaseratiModelObj: ExploreMaseratiModel(),
      ))
        ..add(ExploreMaseratiInitialEvent()),
      child: ExploreMaseratiPage(),
    );
  }
}

class ExploreMaseratiPageState extends State<ExploreMaseratiPage>
    with AutomaticKeepAliveClientMixin<ExploreMaseratiPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 46.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.h),
                          child: BlocSelector<ExploreMaseratiBloc,
                              ExploreMaseratiState, TextEditingController?>(
                            selector: (state) => state.searchController,
                            builder: (context, searchController) {
                              return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_search".tr,
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 20.v),
                        _buildFilterSection(context),
                        SizedBox(height: 20.v),
                        _buildViewHierarchySection(context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterSection(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70.h,
              padding: EdgeInsets.symmetric(vertical: 5.v),
              decoration: AppDecoration.fillGray30002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_filter".tr,
                      style: CustomTextStyles.labelLargeBluegray70004,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownBlueGray700,
                    height: 3.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      top: 11.v,
                      bottom: 11.v,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "lbl_suv".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeBluegray70004,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: BlocSelector<ExploreMaseratiBloc, ExploreMaseratiState,
                  ExploreMaseratiModel?>(
                selector: (state) => state.exploreMaseratiModelObj,
                builder: (context, exploreMaseratiModelObj) {
                  return CustomDropDown(
                    width: 92.h,
                    hintText: "lbl_car_type".tr,
                    items: exploreMaseratiModelObj?.dropdownItemList ?? [],
                    onChanged: (value) {
                      context
                          .read<ExploreMaseratiBloc>()
                          .add(ChangeDropDownEvent(value: value));
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: BlocSelector<ExploreMaseratiBloc, ExploreMaseratiState,
                  ExploreMaseratiModel?>(
                selector: (state) => state.exploreMaseratiModelObj,
                builder: (context, exploreMaseratiModelObj) {
                  return CustomDropDown(
                    width: 97.h,
                    hintText: "lbl_fuel_type".tr,
                    items: exploreMaseratiModelObj?.dropdownItemList1 ?? [],
                    onChanged: (value) {
                      context
                          .read<ExploreMaseratiBloc>()
                          .add(ChangeDropDown1Event(value: value));
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: BlocSelector<ExploreMaseratiBloc, ExploreMaseratiState,
                  ExploreMaseratiModel?>(
                selector: (state) => state.exploreMaseratiModelObj,
                builder: (context, exploreMaseratiModelObj) {
                  return CustomDropDown(
                    width: 82.h,
                    hintText: "lbl_budget".tr,
                    items: exploreMaseratiModelObj?.dropdownItemList2 ?? [],
                    onChanged: (value) {
                      context
                          .read<ExploreMaseratiBloc>()
                          .add(ChangeDropDown2Event(value: value));
                    },
                  );
                },
              ),
            ),
            Container(
              height: 36.v,
              width: 49.h,
              margin: EdgeInsets.only(left: 12.h),
              decoration: BoxDecoration(
                color: appTheme.gray30002,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: BlocSelector<ExploreMaseratiBloc, ExploreMaseratiState,
          ExploreMaseratiModel?>(
        selector: (state) => state.exploreMaseratiModelObj,
        builder: (context, exploreMaseratiModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 12.v,
              );
            },
            itemCount:
                exploreMaseratiModelObj?.viewhierarchysectionItemList.length ??
                    0,
            itemBuilder: (context, index) {
              ViewhierarchysectionItemModel model = exploreMaseratiModelObj
                      ?.viewhierarchysectionItemList[index] ??
                  ViewhierarchysectionItemModel();
              return ViewhierarchysectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
