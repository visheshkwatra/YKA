// ignore_for_file: must_be_immutable

part of 'profile_thirtyeight_bloc.dart';

/// Represents the state of ProfileThirtyeight in the application.
class ProfileThirtyeightState extends Equatable {
  ProfileThirtyeightState({this.profileThirtyeightModelObj});

  ProfileThirtyeightModel? profileThirtyeightModelObj;

  @override
  List<Object?> get props => [
        profileThirtyeightModelObj,
      ];
  ProfileThirtyeightState copyWith(
      {ProfileThirtyeightModel? profileThirtyeightModelObj}) {
    return ProfileThirtyeightState(
      profileThirtyeightModelObj:
          profileThirtyeightModelObj ?? this.profileThirtyeightModelObj,
    );
  }
}
