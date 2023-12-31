// ignore_for_file: must_be_immutable

part of 'profile_twentytwo_bloc.dart';

/// Represents the state of ProfileTwentytwo in the application.
class ProfileTwentytwoState extends Equatable {
  ProfileTwentytwoState({this.profileTwentytwoModelObj});

  ProfileTwentytwoModel? profileTwentytwoModelObj;

  @override
  List<Object?> get props => [
        profileTwentytwoModelObj,
      ];
  ProfileTwentytwoState copyWith(
      {ProfileTwentytwoModel? profileTwentytwoModelObj}) {
    return ProfileTwentytwoState(
      profileTwentytwoModelObj:
          profileTwentytwoModelObj ?? this.profileTwentytwoModelObj,
    );
  }
}
