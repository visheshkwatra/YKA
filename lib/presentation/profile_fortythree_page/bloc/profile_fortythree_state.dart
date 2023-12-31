// ignore_for_file: must_be_immutable

part of 'profile_fortythree_bloc.dart';

/// Represents the state of ProfileFortythree in the application.
class ProfileFortythreeState extends Equatable {
  ProfileFortythreeState({this.profileFortythreeModelObj});

  ProfileFortythreeModel? profileFortythreeModelObj;

  @override
  List<Object?> get props => [
        profileFortythreeModelObj,
      ];
  ProfileFortythreeState copyWith(
      {ProfileFortythreeModel? profileFortythreeModelObj}) {
    return ProfileFortythreeState(
      profileFortythreeModelObj:
          profileFortythreeModelObj ?? this.profileFortythreeModelObj,
    );
  }
}
