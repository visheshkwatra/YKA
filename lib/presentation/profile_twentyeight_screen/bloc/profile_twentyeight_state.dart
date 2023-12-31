// ignore_for_file: must_be_immutable

part of 'profile_twentyeight_bloc.dart';

/// Represents the state of ProfileTwentyeight in the application.
class ProfileTwentyeightState extends Equatable {
  ProfileTwentyeightState({this.profileTwentyeightModelObj});

  ProfileTwentyeightModel? profileTwentyeightModelObj;

  @override
  List<Object?> get props => [
        profileTwentyeightModelObj,
      ];
  ProfileTwentyeightState copyWith(
      {ProfileTwentyeightModel? profileTwentyeightModelObj}) {
    return ProfileTwentyeightState(
      profileTwentyeightModelObj:
          profileTwentyeightModelObj ?? this.profileTwentyeightModelObj,
    );
  }
}
