import '../profile_seventyeight_screen/widgets/userprofilelist1_item_widget.dart';
import 'bloc/profile_seventyeight_bloc.dart';
import 'dart:async';
import 'models/profile_seventyeight_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:yka_app/core/app_export.dart';
import 'package:yka_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:yka_app/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_app/widgets/custom_icon_button.dart';

class ProfileSeventyeightScreen extends StatelessWidget {
  ProfileSeventyeightScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSeventyeightBloc>(
      create: (context) => ProfileSeventyeightBloc(ProfileSeventyeightState(
        profileSeventyeightModelObj: ProfileSeventyeightModel(),
      ))
        ..add(ProfileSeventyeightInitialEvent()),
      child: ProfileSeventyeightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 813.v,
          width: double.maxFinite,
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildSettingsColumn(context),
                    Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: 909.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              _buildMap(context),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 474.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 474.v,
                                          width: double.maxFinite,
                                          decoration: BoxDecoration(
                                            color: appTheme.gray10006,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 169.v),
                                          child: Container(
                                            height: 4.v,
                                            width: 113.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray30004,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2.h,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2.h,
                                              ),
                                              child: LinearProgressIndicator(
                                                value: 0.29,
                                                backgroundColor:
                                                    appTheme.gray30004,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  theme.colorScheme.primary,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      _buildNextRow(context),
                                      _buildUserProfileList(context),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text(
                                    "lbl_nearby_centers".tr,
                                    style: CustomTextStyles.titleSmallGray70001,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 428.v,
                                    right: 24.h,
                                  ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup650,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          CustomAppBar(
            height: 49.v,
            leadingWidth: 68.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.only(left: 20.h),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_select_center".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 394.v,
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
  Widget _buildNextRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(vertical: 189.v),
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
                bottom: 23.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_next".tr,
                    style: CustomTextStyles.titleSmallIndigo300,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_vehicle_mileage".tr,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 474.v,
        child: BlocSelector<ProfileSeventyeightBloc, ProfileSeventyeightState,
            ProfileSeventyeightModel?>(
          selector: (state) => state.profileSeventyeightModelObj,
          builder: (context, profileSeventyeightModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 30.v,
                bottom: 319.v,
              ),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 261.0.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray10005,
                    indent: 0.5.h,
                    endIndent: 0.5.h,
                  ),
                );
              },
              itemCount: profileSeventyeightModelObj
                      ?.userprofilelist1ItemList.length ??
                  0,
              itemBuilder: (context, index) {
                Userprofilelist1ItemModel model = profileSeventyeightModelObj
                        ?.userprofilelist1ItemList[index] ??
                    Userprofilelist1ItemModel();
                return Userprofilelist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
