// ignore_for_file: must_be_immutable

part of 'explore_mercedes_tab_container_bloc.dart';

/// Represents the state of ExploreMercedesTabContainer in the application.
class ExploreMercedesTabContainerState extends Equatable {
  ExploreMercedesTabContainerState({this.exploreMercedesTabContainerModelObj});

  ExploreMercedesTabContainerModel? exploreMercedesTabContainerModelObj;

  @override
  List<Object?> get props => [
        exploreMercedesTabContainerModelObj,
      ];
  ExploreMercedesTabContainerState copyWith(
      {ExploreMercedesTabContainerModel? exploreMercedesTabContainerModelObj}) {
    return ExploreMercedesTabContainerState(
      exploreMercedesTabContainerModelObj:
          exploreMercedesTabContainerModelObj ??
              this.exploreMercedesTabContainerModelObj,
    );
  }
}
