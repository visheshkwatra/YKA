// ignore_for_file: must_be_immutable

part of 'service_bloc.dart';

/// Represents the state of Service in the application.
class ServiceState extends Equatable {
  ServiceState({
    this.riyadhController,
    this.sliderIndex = 0,
    this.serviceModelObj,
  });

  TextEditingController? riyadhController;

  ServiceModel? serviceModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        riyadhController,
        sliderIndex,
        serviceModelObj,
      ];
  ServiceState copyWith({
    TextEditingController? riyadhController,
    int? sliderIndex,
    ServiceModel? serviceModelObj,
  }) {
    return ServiceState(
      riyadhController: riyadhController ?? this.riyadhController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      serviceModelObj: serviceModelObj ?? this.serviceModelObj,
    );
  }
}
