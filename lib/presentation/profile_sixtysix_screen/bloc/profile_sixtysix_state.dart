// ignore_for_file: must_be_immutable

part of 'profile_sixtysix_bloc.dart';

/// Represents the state of ProfileSixtysix in the application.
class ProfileSixtysixState extends Equatable {
  ProfileSixtysixState({this.profileSixtysixModelObj});

  ProfileSixtysixModel? profileSixtysixModelObj;

  @override
  List<Object?> get props => [
        profileSixtysixModelObj,
      ];
  ProfileSixtysixState copyWith(
      {ProfileSixtysixModel? profileSixtysixModelObj}) {
    return ProfileSixtysixState(
      profileSixtysixModelObj:
          profileSixtysixModelObj ?? this.profileSixtysixModelObj,
    );
  }
}
