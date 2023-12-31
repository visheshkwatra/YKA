// ignore_for_file: must_be_immutable

part of 'profile_seventyfive_bloc.dart';

/// Represents the state of ProfileSeventyfive in the application.
class ProfileSeventyfiveState extends Equatable {
  ProfileSeventyfiveState({this.profileSeventyfiveModelObj});

  ProfileSeventyfiveModel? profileSeventyfiveModelObj;

  @override
  List<Object?> get props => [
        profileSeventyfiveModelObj,
      ];
  ProfileSeventyfiveState copyWith(
      {ProfileSeventyfiveModel? profileSeventyfiveModelObj}) {
    return ProfileSeventyfiveState(
      profileSeventyfiveModelObj:
          profileSeventyfiveModelObj ?? this.profileSeventyfiveModelObj,
    );
  }
}
