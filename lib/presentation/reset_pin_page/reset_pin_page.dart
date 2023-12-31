import '../reset_pin_page/widgets/businesscard_item_widget.dart';
import 'bloc/reset_pin_bloc.dart';
import 'dart:async';
import 'models/businesscard_item_model.dart';
import 'models/reset_pin_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ResetPinPage extends StatefulWidget {
  const ResetPinPage({Key? key})
      : super(
          key: key,
        );

  @override
  ResetPinPageState createState() => ResetPinPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPinBloc>(
      create: (context) => ResetPinBloc(ResetPinState(
        resetPinModelObj: ResetPinModel(),
      ))
        ..add(ResetPinInitialEvent()),
      child: ResetPinPage(),
    );
  }
}

class ResetPinPageState extends State<ResetPinPage>
    with AutomaticKeepAliveClientMixin<ResetPinPage> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 14.v),
                Column(
                  children: [
                    _buildMapSection(context),
                    SizedBox(height: 16.v),
                    _buildNearbyCentersSection(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 344.v,
      width: 375.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildNearbyCentersSection(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 1.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "lbl_nearby_centers".tr,
                  style: CustomTextStyles.bodyMediumRubikBlack9000514,
                ),
              ),
              Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.titleSmallPoppinsBlue70001,
              ),
            ],
          ),
        ),
        SizedBox(height: 14.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 130.v,
            child: BlocSelector<ResetPinBloc, ResetPinState, ResetPinModel?>(
              selector: (state) => state.resetPinModelObj,
              builder: (context, resetPinModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 246.0.h,
                      child: Divider(
                        height: 1.v,
                        thickness: 1.v,
                        color: appTheme.blueGray10001,
                        indent: 6.0.h,
                        endIndent: 6.0.h,
                      ),
                    );
                  },
                  itemCount: resetPinModelObj?.businesscardItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    BusinesscardItemModel model =
                        resetPinModelObj?.businesscardItemList[index] ??
                            BusinesscardItemModel();
                    return BusinesscardItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
