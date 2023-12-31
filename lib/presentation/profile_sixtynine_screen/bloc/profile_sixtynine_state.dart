// ignore_for_file: must_be_immutable

part of 'profile_sixtynine_bloc.dart';

/// Represents the state of ProfileSixtynine in the application.
class ProfileSixtynineState extends Equatable {
  ProfileSixtynineState({this.profileSixtynineModelObj});

  ProfileSixtynineModel? profileSixtynineModelObj;

  @override
  List<Object?> get props => [
        profileSixtynineModelObj,
      ];
  ProfileSixtynineState copyWith(
      {ProfileSixtynineModel? profileSixtynineModelObj}) {
    return ProfileSixtynineState(
      profileSixtynineModelObj:
          profileSixtynineModelObj ?? this.profileSixtynineModelObj,
    );
  }
}
