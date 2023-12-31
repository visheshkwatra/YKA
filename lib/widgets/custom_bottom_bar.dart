import 'package:flutter/material.dart';
import 'package:yka_app/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHomeRed800,
      activeIcon: ImageConstant.imgNavHomeRed800,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavFindUsGray70005,
      activeIcon: ImageConstant.imgNavFindUsGray70005,
      title: "lbl_find_us".tr,
      type: BottomBarEnum.Findus,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavServices,
      activeIcon: ImageConstant.imgNavServices,
      title: "lbl_services".tr,
      type: BottomBarEnum.Services,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile22x22,
      activeIcon: ImageConstant.imgNavProfile22x22,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  color: appTheme.gray70005,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargeGray700.copyWith(
                      color: appTheme.gray700,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.red800,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  color: appTheme.red800,
                  margin: EdgeInsets.only(top: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 9.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargeRed80002.copyWith(
                      color: appTheme.red80002,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Findus,
  Services,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
