// ignore_for_file: must_be_immutable

part of 'profile_thirtynine_bloc.dart';

/// Represents the state of ProfileThirtynine in the application.
class ProfileThirtynineState extends Equatable {
  ProfileThirtynineState({this.profileThirtynineModelObj});

  ProfileThirtynineModel? profileThirtynineModelObj;

  @override
  List<Object?> get props => [
        profileThirtynineModelObj,
      ];
  ProfileThirtynineState copyWith(
      {ProfileThirtynineModel? profileThirtynineModelObj}) {
    return ProfileThirtynineState(
      profileThirtynineModelObj:
          profileThirtynineModelObj ?? this.profileThirtynineModelObj,
    );
  }
}
