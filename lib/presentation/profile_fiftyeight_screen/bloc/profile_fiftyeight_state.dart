// ignore_for_file: must_be_immutable

part of 'profile_fiftyeight_bloc.dart';

/// Represents the state of ProfileFiftyeight in the application.
class ProfileFiftyeightState extends Equatable {
  ProfileFiftyeightState({
    this.isSelectedSwitch = false,
    this.profileFiftyeightModelObj,
  });

  ProfileFiftyeightModel? profileFiftyeightModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        profileFiftyeightModelObj,
      ];
  ProfileFiftyeightState copyWith({
    bool? isSelectedSwitch,
    ProfileFiftyeightModel? profileFiftyeightModelObj,
  }) {
    return ProfileFiftyeightState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      profileFiftyeightModelObj:
          profileFiftyeightModelObj ?? this.profileFiftyeightModelObj,
    );
  }
}
