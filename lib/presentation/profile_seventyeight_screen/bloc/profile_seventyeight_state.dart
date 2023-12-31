// ignore_for_file: must_be_immutable

part of 'profile_seventyeight_bloc.dart';

/// Represents the state of ProfileSeventyeight in the application.
class ProfileSeventyeightState extends Equatable {
  ProfileSeventyeightState({this.profileSeventyeightModelObj});

  ProfileSeventyeightModel? profileSeventyeightModelObj;

  @override
  List<Object?> get props => [
        profileSeventyeightModelObj,
      ];
  ProfileSeventyeightState copyWith(
      {ProfileSeventyeightModel? profileSeventyeightModelObj}) {
    return ProfileSeventyeightState(
      profileSeventyeightModelObj:
          profileSeventyeightModelObj ?? this.profileSeventyeightModelObj,
    );
  }
}
