// ignore_for_file: must_be_immutable

part of 'profile_eightyeight_bloc.dart';

/// Represents the state of ProfileEightyeight in the application.
class ProfileEightyeightState extends Equatable {
  ProfileEightyeightState({this.profileEightyeightModelObj});

  ProfileEightyeightModel? profileEightyeightModelObj;

  @override
  List<Object?> get props => [
        profileEightyeightModelObj,
      ];
  ProfileEightyeightState copyWith(
      {ProfileEightyeightModel? profileEightyeightModelObj}) {
    return ProfileEightyeightState(
      profileEightyeightModelObj:
          profileEightyeightModelObj ?? this.profileEightyeightModelObj,
    );
  }
}
