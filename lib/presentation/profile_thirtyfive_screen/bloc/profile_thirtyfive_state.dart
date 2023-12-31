// ignore_for_file: must_be_immutable

part of 'profile_thirtyfive_bloc.dart';

/// Represents the state of ProfileThirtyfive in the application.
class ProfileThirtyfiveState extends Equatable {
  ProfileThirtyfiveState({this.profileThirtyfiveModelObj});

  ProfileThirtyfiveModel? profileThirtyfiveModelObj;

  @override
  List<Object?> get props => [
        profileThirtyfiveModelObj,
      ];
  ProfileThirtyfiveState copyWith(
      {ProfileThirtyfiveModel? profileThirtyfiveModelObj}) {
    return ProfileThirtyfiveState(
      profileThirtyfiveModelObj:
          profileThirtyfiveModelObj ?? this.profileThirtyfiveModelObj,
    );
  }
}
