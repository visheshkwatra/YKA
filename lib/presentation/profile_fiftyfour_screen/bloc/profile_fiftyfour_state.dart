// ignore_for_file: must_be_immutable

part of 'profile_fiftyfour_bloc.dart';

/// Represents the state of ProfileFiftyfour in the application.
class ProfileFiftyfourState extends Equatable {
  ProfileFiftyfourState({
    this.isSelectedSwitch = false,
    this.profileFiftyfourModelObj,
  });

  ProfileFiftyfourModel? profileFiftyfourModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        profileFiftyfourModelObj,
      ];
  ProfileFiftyfourState copyWith({
    bool? isSelectedSwitch,
    ProfileFiftyfourModel? profileFiftyfourModelObj,
  }) {
    return ProfileFiftyfourState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      profileFiftyfourModelObj:
          profileFiftyfourModelObj ?? this.profileFiftyfourModelObj,
    );
  }
}
