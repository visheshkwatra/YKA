// ignore_for_file: must_be_immutable

part of 'my_vehicle_details_bloc.dart';

/// Represents the state of MyVehicleDetails in the application.
class MyVehicleDetailsState extends Equatable {
  MyVehicleDetailsState({this.myVehicleDetailsModelObj});

  MyVehicleDetailsModel? myVehicleDetailsModelObj;

  @override
  List<Object?> get props => [
        myVehicleDetailsModelObj,
      ];
  MyVehicleDetailsState copyWith(
      {MyVehicleDetailsModel? myVehicleDetailsModelObj}) {
    return MyVehicleDetailsState(
      myVehicleDetailsModelObj:
          myVehicleDetailsModelObj ?? this.myVehicleDetailsModelObj,
    );
  }
}
