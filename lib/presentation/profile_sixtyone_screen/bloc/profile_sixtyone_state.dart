// ignore_for_file: must_be_immutable

part of 'profile_sixtyone_bloc.dart';

/// Represents the state of ProfileSixtyone in the application.
class ProfileSixtyoneState extends Equatable {
  ProfileSixtyoneState({this.profileSixtyoneModelObj});

  ProfileSixtyoneModel? profileSixtyoneModelObj;

  @override
  List<Object?> get props => [
        profileSixtyoneModelObj,
      ];
  ProfileSixtyoneState copyWith(
      {ProfileSixtyoneModel? profileSixtyoneModelObj}) {
    return ProfileSixtyoneState(
      profileSixtyoneModelObj:
          profileSixtyoneModelObj ?? this.profileSixtyoneModelObj,
    );
  }
}
