// ignore_for_file: must_be_immutable

part of 'profile_eightytwo_bloc.dart';

/// Represents the state of ProfileEightytwo in the application.
class ProfileEightytwoState extends Equatable {
  ProfileEightytwoState({this.profileEightytwoModelObj});

  ProfileEightytwoModel? profileEightytwoModelObj;

  @override
  List<Object?> get props => [
        profileEightytwoModelObj,
      ];
  ProfileEightytwoState copyWith(
      {ProfileEightytwoModel? profileEightytwoModelObj}) {
    return ProfileEightytwoState(
      profileEightytwoModelObj:
          profileEightytwoModelObj ?? this.profileEightytwoModelObj,
    );
  }
}
