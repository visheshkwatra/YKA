// ignore_for_file: must_be_immutable

part of 'my_vehicle_details_one_bloc.dart';

/// Represents the state of MyVehicleDetailsOne in the application.
class MyVehicleDetailsOneState extends Equatable {
  MyVehicleDetailsOneState({this.myVehicleDetailsOneModelObj});

  MyVehicleDetailsOneModel? myVehicleDetailsOneModelObj;

  @override
  List<Object?> get props => [
        myVehicleDetailsOneModelObj,
      ];
  MyVehicleDetailsOneState copyWith(
      {MyVehicleDetailsOneModel? myVehicleDetailsOneModelObj}) {
    return MyVehicleDetailsOneState(
      myVehicleDetailsOneModelObj:
          myVehicleDetailsOneModelObj ?? this.myVehicleDetailsOneModelObj,
    );
  }
}
