// ignore_for_file: must_be_immutable

part of 'profile_thirtythree_bloc.dart';

/// Represents the state of ProfileThirtythree in the application.
class ProfileThirtythreeState extends Equatable {
  ProfileThirtythreeState({this.profileThirtythreeModelObj});

  ProfileThirtythreeModel? profileThirtythreeModelObj;

  @override
  List<Object?> get props => [
        profileThirtythreeModelObj,
      ];
  ProfileThirtythreeState copyWith(
      {ProfileThirtythreeModel? profileThirtythreeModelObj}) {
    return ProfileThirtythreeState(
      profileThirtythreeModelObj:
          profileThirtythreeModelObj ?? this.profileThirtythreeModelObj,
    );
  }
}
