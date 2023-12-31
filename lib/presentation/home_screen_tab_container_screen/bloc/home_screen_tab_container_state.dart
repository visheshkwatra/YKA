// ignore_for_file: must_be_immutable

part of 'home_screen_tab_container_bloc.dart';

/// Represents the state of HomeScreenTabContainer in the application.
class HomeScreenTabContainerState extends Equatable {
  HomeScreenTabContainerState({this.homeScreenTabContainerModelObj});

  HomeScreenTabContainerModel? homeScreenTabContainerModelObj;

  @override
  List<Object?> get props => [
        homeScreenTabContainerModelObj,
      ];
  HomeScreenTabContainerState copyWith(
      {HomeScreenTabContainerModel? homeScreenTabContainerModelObj}) {
    return HomeScreenTabContainerState(
      homeScreenTabContainerModelObj:
          homeScreenTabContainerModelObj ?? this.homeScreenTabContainerModelObj,
    );
  }
}
