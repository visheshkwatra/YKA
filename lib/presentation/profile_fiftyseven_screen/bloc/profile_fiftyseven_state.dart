// ignore_for_file: must_be_immutable

part of 'profile_fiftyseven_bloc.dart';

/// Represents the state of ProfileFiftyseven in the application.
class ProfileFiftysevenState extends Equatable {
  ProfileFiftysevenState({this.profileFiftysevenModelObj});

  ProfileFiftysevenModel? profileFiftysevenModelObj;

  @override
  List<Object?> get props => [
        profileFiftysevenModelObj,
      ];
  ProfileFiftysevenState copyWith(
      {ProfileFiftysevenModel? profileFiftysevenModelObj}) {
    return ProfileFiftysevenState(
      profileFiftysevenModelObj:
          profileFiftysevenModelObj ?? this.profileFiftysevenModelObj,
    );
  }
}
