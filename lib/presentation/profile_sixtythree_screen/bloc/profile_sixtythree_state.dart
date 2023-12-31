// ignore_for_file: must_be_immutable

part of 'profile_sixtythree_bloc.dart';

/// Represents the state of ProfileSixtythree in the application.
class ProfileSixtythreeState extends Equatable {
  ProfileSixtythreeState({this.profileSixtythreeModelObj});

  ProfileSixtythreeModel? profileSixtythreeModelObj;

  @override
  List<Object?> get props => [
        profileSixtythreeModelObj,
      ];
  ProfileSixtythreeState copyWith(
      {ProfileSixtythreeModel? profileSixtythreeModelObj}) {
    return ProfileSixtythreeState(
      profileSixtythreeModelObj:
          profileSixtythreeModelObj ?? this.profileSixtythreeModelObj,
    );
  }
}
