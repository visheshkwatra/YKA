// ignore_for_file: must_be_immutable

part of 'profile_sixtyseven_bloc.dart';

/// Represents the state of ProfileSixtyseven in the application.
class ProfileSixtysevenState extends Equatable {
  ProfileSixtysevenState({this.profileSixtysevenModelObj});

  ProfileSixtysevenModel? profileSixtysevenModelObj;

  @override
  List<Object?> get props => [
        profileSixtysevenModelObj,
      ];
  ProfileSixtysevenState copyWith(
      {ProfileSixtysevenModel? profileSixtysevenModelObj}) {
    return ProfileSixtysevenState(
      profileSixtysevenModelObj:
          profileSixtysevenModelObj ?? this.profileSixtysevenModelObj,
    );
  }
}
