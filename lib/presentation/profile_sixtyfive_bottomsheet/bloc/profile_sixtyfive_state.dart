// ignore_for_file: must_be_immutable

part of 'profile_sixtyfive_bloc.dart';

/// Represents the state of ProfileSixtyfive in the application.
class ProfileSixtyfiveState extends Equatable {
  ProfileSixtyfiveState({this.profileSixtyfiveModelObj});

  ProfileSixtyfiveModel? profileSixtyfiveModelObj;

  @override
  List<Object?> get props => [
        profileSixtyfiveModelObj,
      ];
  ProfileSixtyfiveState copyWith(
      {ProfileSixtyfiveModel? profileSixtyfiveModelObj}) {
    return ProfileSixtyfiveState(
      profileSixtyfiveModelObj:
          profileSixtyfiveModelObj ?? this.profileSixtyfiveModelObj,
    );
  }
}
