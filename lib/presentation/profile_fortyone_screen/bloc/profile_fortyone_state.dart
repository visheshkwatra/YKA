// ignore_for_file: must_be_immutable

part of 'profile_fortyone_bloc.dart';

/// Represents the state of ProfileFortyone in the application.
class ProfileFortyoneState extends Equatable {
  ProfileFortyoneState({this.profileFortyoneModelObj});

  ProfileFortyoneModel? profileFortyoneModelObj;

  @override
  List<Object?> get props => [
        profileFortyoneModelObj,
      ];
  ProfileFortyoneState copyWith(
      {ProfileFortyoneModel? profileFortyoneModelObj}) {
    return ProfileFortyoneState(
      profileFortyoneModelObj:
          profileFortyoneModelObj ?? this.profileFortyoneModelObj,
    );
  }
}
