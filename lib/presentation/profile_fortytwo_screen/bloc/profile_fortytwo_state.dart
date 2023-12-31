// ignore_for_file: must_be_immutable

part of 'profile_fortytwo_bloc.dart';

/// Represents the state of ProfileFortytwo in the application.
class ProfileFortytwoState extends Equatable {
  ProfileFortytwoState({this.profileFortytwoModelObj});

  ProfileFortytwoModel? profileFortytwoModelObj;

  @override
  List<Object?> get props => [
        profileFortytwoModelObj,
      ];
  ProfileFortytwoState copyWith(
      {ProfileFortytwoModel? profileFortytwoModelObj}) {
    return ProfileFortytwoState(
      profileFortytwoModelObj:
          profileFortytwoModelObj ?? this.profileFortytwoModelObj,
    );
  }
}
