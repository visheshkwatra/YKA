// ignore_for_file: must_be_immutable

part of 'profile_fortyfive_bloc.dart';

/// Represents the state of ProfileFortyfive in the application.
class ProfileFortyfiveState extends Equatable {
  ProfileFortyfiveState({this.profileFortyfiveModelObj});

  ProfileFortyfiveModel? profileFortyfiveModelObj;

  @override
  List<Object?> get props => [
        profileFortyfiveModelObj,
      ];
  ProfileFortyfiveState copyWith(
      {ProfileFortyfiveModel? profileFortyfiveModelObj}) {
    return ProfileFortyfiveState(
      profileFortyfiveModelObj:
          profileFortyfiveModelObj ?? this.profileFortyfiveModelObj,
    );
  }
}
