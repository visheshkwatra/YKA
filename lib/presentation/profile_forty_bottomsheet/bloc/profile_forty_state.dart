// ignore_for_file: must_be_immutable

part of 'profile_forty_bloc.dart';

/// Represents the state of ProfileForty in the application.
class ProfileFortyState extends Equatable {
  ProfileFortyState({this.profileFortyModelObj});

  ProfileFortyModel? profileFortyModelObj;

  @override
  List<Object?> get props => [
        profileFortyModelObj,
      ];
  ProfileFortyState copyWith({ProfileFortyModel? profileFortyModelObj}) {
    return ProfileFortyState(
      profileFortyModelObj: profileFortyModelObj ?? this.profileFortyModelObj,
    );
  }
}
