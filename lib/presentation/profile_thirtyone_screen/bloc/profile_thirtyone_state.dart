// ignore_for_file: must_be_immutable

part of 'profile_thirtyone_bloc.dart';

/// Represents the state of ProfileThirtyone in the application.
class ProfileThirtyoneState extends Equatable {
  ProfileThirtyoneState({this.profileThirtyoneModelObj});

  ProfileThirtyoneModel? profileThirtyoneModelObj;

  @override
  List<Object?> get props => [
        profileThirtyoneModelObj,
      ];
  ProfileThirtyoneState copyWith(
      {ProfileThirtyoneModel? profileThirtyoneModelObj}) {
    return ProfileThirtyoneState(
      profileThirtyoneModelObj:
          profileThirtyoneModelObj ?? this.profileThirtyoneModelObj,
    );
  }
}
