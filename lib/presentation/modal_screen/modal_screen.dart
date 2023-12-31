import 'bloc/modal_bloc.dart';
import 'models/modal_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

class ModalScreen extends StatelessWidget {
  const ModalScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ModalBloc>(
      create: (context) => ModalBloc(ModalState(
        modalModelObj: ModalModel(),
      ))
        ..add(ModalInitialEvent()),
      child: ModalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ModalBloc, ModalState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 426.v,
              width: 394.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 426.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40.h),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                            appTheme.gray50,
                            appTheme.teal5001,
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBackgroundComplete,
                    height: 153.v,
                    width: 393.h,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 22.v),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
