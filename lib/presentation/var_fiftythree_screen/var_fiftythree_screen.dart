import 'bloc/var_fiftythree_bloc.dart';
import 'models/var_fiftythree_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

class VarFiftythreeScreen extends StatelessWidget {
  const VarFiftythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VarFiftythreeBloc>(
      create: (context) => VarFiftythreeBloc(VarFiftythreeState(
        varFiftythreeModelObj: VarFiftythreeModel(),
      ))
        ..add(VarFiftythreeInitialEvent()),
      child: VarFiftythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VarFiftythreeBloc, VarFiftythreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 1),
                  end: Alignment(0.5, -0.01),
                  colors: [
                    appTheme.black90005,
                    appTheme.gray90013,
                  ],
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 835.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Opacity(
                          opacity: 0.1,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgRectangle,
                            height: 426.v,
                            width: 393.h,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse3041,
                          height: 157.v,
                          width: 214.h,
                          alignment: Alignment.topLeft,
                        ),
                        Opacity(
                          opacity: 0.05,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup,
                            height: 268.v,
                            width: 348.h,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 647.v,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage28,
                                  height: 247.v,
                                  width: 386.h,
                                  alignment: Alignment.topCenter,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 395.v,
                                  width: 393.h,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 68.v),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 486.v,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment(0.5, 0),
                                        end: Alignment(0.5, 1),
                                        colors: [
                                          appTheme.black90005.withOpacity(0),
                                          appTheme.black90005,
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.1,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgVector533,
                                    height: 26.v,
                                    width: 393.h,
                                    alignment: Alignment.topCenter,
                                    margin: EdgeInsets.only(top: 222.v),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.1,
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle409x393,
                                    height: 409.v,
                                    width: 393.h,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.1,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgImage29,
                                    height: 245.v,
                                    width: 389.h,
                                    alignment: Alignment.bottomCenter,
                                    margin: EdgeInsets.only(bottom: 155.v),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
