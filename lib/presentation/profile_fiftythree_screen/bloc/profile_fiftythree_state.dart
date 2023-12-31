// ignore_for_file: must_be_immutable

part of 'profile_fiftythree_bloc.dart';

/// Represents the state of ProfileFiftythree in the application.
class ProfileFiftythreeState extends Equatable {
  ProfileFiftythreeState({this.profileFiftythreeModelObj});

  ProfileFiftythreeModel? profileFiftythreeModelObj;

  @override
  List<Object?> get props => [
        profileFiftythreeModelObj,
      ];
  ProfileFiftythreeState copyWith(
      {ProfileFiftythreeModel? profileFiftythreeModelObj}) {
    return ProfileFiftythreeState(
      profileFiftythreeModelObj:
          profileFiftythreeModelObj ?? this.profileFiftythreeModelObj,
    );
  }
}
