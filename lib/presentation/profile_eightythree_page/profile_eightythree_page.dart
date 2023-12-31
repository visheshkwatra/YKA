import '../profile_eightythree_page/widgets/userprofile3_item_widget.dart';
import 'bloc/profile_eightythree_bloc.dart';
import 'dart:async';
import 'models/profile_eightythree_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileEightythreePage extends StatelessWidget {
  ProfileEightythreePage({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileEightythreeBloc>(
      create: (context) => ProfileEightythreeBloc(ProfileEightythreeState(
        profileEightythreeModelObj: ProfileEightythreeModel(),
      ))
        ..add(ProfileEightythreeInitialEvent()),
      child: ProfileEightythreePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 719.5.v,
          width: double.maxFinite,
          decoration: AppDecoration.fillIndigo,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSnazzyImage11,
                height: 717.v,
                width: 393.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 36.v),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: 976.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          _buildMapSection(context),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              height: 484.v,
                              width: double.maxFinite,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 484.v,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray10006,
                                      ),
                                    ),
                                  ),
                                  _buildButtonSection(context),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.h),
                              child: Text(
                                "msg_nearby_showrooms".tr,
                                style: CustomTextStyles.titleSmallGray70001,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 24.h),
                              child: Text(
                                "lbl_see_all".tr,
                                style: CustomTextStyles.titleSmallRed800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 451.v,
      width: 354.h,
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
  Widget _buildButtonSection(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(top: 30.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 127.v,
              child: BlocSelector<ProfileEightythreeBloc,
                  ProfileEightythreeState, ProfileEightythreeModel?>(
                selector: (state) => state.profileEightythreeModelObj,
                builder: (context, profileEightythreeModelObj) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 276.0.h,
                        child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray10005,
                          indent: 8.0.h,
                          endIndent: 8.0.h,
                        ),
                      );
                    },
                    itemCount: profileEightythreeModelObj
                            ?.userprofile3ItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      Userprofile3ItemModel model = profileEightythreeModelObj
                              ?.userprofile3ItemList[index] ??
                          Userprofile3ItemModel();
                      return Userprofile3ItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(left: 120.h),
              child: Container(
                height: 4.v,
                width: 113.h,
                decoration: BoxDecoration(
                  color: appTheme.gray30004,
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
                    backgroundColor: appTheme.gray30004,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
