// ignore_for_file: must_be_immutable

part of 'profile_fiftyone_bloc.dart';

/// Represents the state of ProfileFiftyone in the application.
class ProfileFiftyoneState extends Equatable {
  ProfileFiftyoneState({this.profileFiftyoneModelObj});

  ProfileFiftyoneModel? profileFiftyoneModelObj;

  @override
  List<Object?> get props => [
        profileFiftyoneModelObj,
      ];
  ProfileFiftyoneState copyWith(
      {ProfileFiftyoneModel? profileFiftyoneModelObj}) {
    return ProfileFiftyoneState(
      profileFiftyoneModelObj:
          profileFiftyoneModelObj ?? this.profileFiftyoneModelObj,
    );
  }
}
