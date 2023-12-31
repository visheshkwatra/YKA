// ignore_for_file: must_be_immutable

part of 'profile_fortynine_bloc.dart';

/// Represents the state of ProfileFortynine in the application.
class ProfileFortynineState extends Equatable {
  ProfileFortynineState({this.profileFortynineModelObj});

  ProfileFortynineModel? profileFortynineModelObj;

  @override
  List<Object?> get props => [
        profileFortynineModelObj,
      ];
  ProfileFortynineState copyWith(
      {ProfileFortynineModel? profileFortynineModelObj}) {
    return ProfileFortynineState(
      profileFortynineModelObj:
          profileFortynineModelObj ?? this.profileFortynineModelObj,
    );
  }
}
