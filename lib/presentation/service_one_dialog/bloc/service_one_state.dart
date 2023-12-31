// ignore_for_file: must_be_immutable

part of 'service_one_bloc.dart';

/// Represents the state of ServiceOne in the application.
class ServiceOneState extends Equatable {
  ServiceOneState({this.serviceOneModelObj});

  ServiceOneModel? serviceOneModelObj;

  @override
  List<Object?> get props => [
        serviceOneModelObj,
      ];
  ServiceOneState copyWith({ServiceOneModel? serviceOneModelObj}) {
    return ServiceOneState(
      serviceOneModelObj: serviceOneModelObj ?? this.serviceOneModelObj,
    );
  }
}
