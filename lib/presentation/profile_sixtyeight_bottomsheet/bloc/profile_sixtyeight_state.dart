// ignore_for_file: must_be_immutable

part of 'profile_sixtyeight_bloc.dart';

/// Represents the state of ProfileSixtyeight in the application.
class ProfileSixtyeightState extends Equatable {
  ProfileSixtyeightState({this.profileSixtyeightModelObj});

  ProfileSixtyeightModel? profileSixtyeightModelObj;

  @override
  List<Object?> get props => [
        profileSixtyeightModelObj,
      ];
  ProfileSixtyeightState copyWith(
      {ProfileSixtyeightModel? profileSixtyeightModelObj}) {
    return ProfileSixtyeightState(
      profileSixtyeightModelObj:
          profileSixtyeightModelObj ?? this.profileSixtyeightModelObj,
    );
  }
}
