// ignore_for_file: must_be_immutable

part of 'profile_fiftynine_bloc.dart';

/// Represents the state of ProfileFiftynine in the application.
class ProfileFiftynineState extends Equatable {
  ProfileFiftynineState({this.profileFiftynineModelObj});

  ProfileFiftynineModel? profileFiftynineModelObj;

  @override
  List<Object?> get props => [
        profileFiftynineModelObj,
      ];
  ProfileFiftynineState copyWith(
      {ProfileFiftynineModel? profileFiftynineModelObj}) {
    return ProfileFiftynineState(
      profileFiftynineModelObj:
          profileFiftynineModelObj ?? this.profileFiftynineModelObj,
    );
  }
}
