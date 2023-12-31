import '../home_screen_page/widgets/businesscard1_item_widget.dart';
import 'bloc/home_screen_bloc.dart';
import 'models/businesscard1_item_model.dart';
import 'models/home_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenPageState createState() => HomeScreenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeScreenBloc>(
      create: (context) => HomeScreenBloc(HomeScreenState(
        homeScreenModelObj: HomeScreenModel(),
      ))
        ..add(HomeScreenInitialEvent()),
      child: HomeScreenPage(),
    );
  }
}

class HomeScreenPageState extends State<HomeScreenPage>
    with AutomaticKeepAliveClientMixin<HomeScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: 375.h,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              _buildBusinessCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBusinessCard(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<HomeScreenBloc, HomeScreenState, HomeScreenModel?>(
          selector: (state) => state.homeScreenModelObj,
          builder: (context, homeScreenModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0.v),
                  child: SizedBox(
                    width: 294.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.blueGray10001,
                    ),
                  ),
                );
              },
              itemCount: homeScreenModelObj?.businesscard1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Businesscard1ItemModel model =
                    homeScreenModelObj?.businesscard1ItemList[index] ??
                        Businesscard1ItemModel();
                return Businesscard1ItemWidget(
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
