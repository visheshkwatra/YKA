// ignore_for_file: must_be_immutable

part of 'profile_fiftytwo_bloc.dart';

/// Represents the state of ProfileFiftytwo in the application.
class ProfileFiftytwoState extends Equatable {
  ProfileFiftytwoState({this.profileFiftytwoModelObj});

  ProfileFiftytwoModel? profileFiftytwoModelObj;

  @override
  List<Object?> get props => [
        profileFiftytwoModelObj,
      ];
  ProfileFiftytwoState copyWith(
      {ProfileFiftytwoModel? profileFiftytwoModelObj}) {
    return ProfileFiftytwoState(
      profileFiftytwoModelObj:
          profileFiftytwoModelObj ?? this.profileFiftytwoModelObj,
    );
  }
}
