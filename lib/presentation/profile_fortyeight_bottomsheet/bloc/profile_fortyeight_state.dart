// ignore_for_file: must_be_immutable

part of 'profile_fortyeight_bloc.dart';

/// Represents the state of ProfileFortyeight in the application.
class ProfileFortyeightState extends Equatable {
  ProfileFortyeightState({this.profileFortyeightModelObj});

  ProfileFortyeightModel? profileFortyeightModelObj;

  @override
  List<Object?> get props => [
        profileFortyeightModelObj,
      ];
  ProfileFortyeightState copyWith(
      {ProfileFortyeightModel? profileFortyeightModelObj}) {
    return ProfileFortyeightState(
      profileFortyeightModelObj:
          profileFortyeightModelObj ?? this.profileFortyeightModelObj,
    );
  }
}
