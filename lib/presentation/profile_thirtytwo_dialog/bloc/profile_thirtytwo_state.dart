// ignore_for_file: must_be_immutable

part of 'profile_thirtytwo_bloc.dart';

/// Represents the state of ProfileThirtytwo in the application.
class ProfileThirtytwoState extends Equatable {
  ProfileThirtytwoState({this.profileThirtytwoModelObj});

  ProfileThirtytwoModel? profileThirtytwoModelObj;

  @override
  List<Object?> get props => [
        profileThirtytwoModelObj,
      ];
  ProfileThirtytwoState copyWith(
      {ProfileThirtytwoModel? profileThirtytwoModelObj}) {
    return ProfileThirtytwoState(
      profileThirtytwoModelObj:
          profileThirtytwoModelObj ?? this.profileThirtytwoModelObj,
    );
  }
}
