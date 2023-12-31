// ignore_for_file: must_be_immutable

part of 'profile_sixtyfour_bloc.dart';

/// Represents the state of ProfileSixtyfour in the application.
class ProfileSixtyfourState extends Equatable {
  ProfileSixtyfourState({this.profileSixtyfourModelObj});

  ProfileSixtyfourModel? profileSixtyfourModelObj;

  @override
  List<Object?> get props => [
        profileSixtyfourModelObj,
      ];
  ProfileSixtyfourState copyWith(
      {ProfileSixtyfourModel? profileSixtyfourModelObj}) {
    return ProfileSixtyfourState(
      profileSixtyfourModelObj:
          profileSixtyfourModelObj ?? this.profileSixtyfourModelObj,
    );
  }
}
