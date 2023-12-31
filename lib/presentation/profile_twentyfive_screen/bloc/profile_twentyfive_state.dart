// ignore_for_file: must_be_immutable

part of 'profile_twentyfive_bloc.dart';

/// Represents the state of ProfileTwentyfive in the application.
class ProfileTwentyfiveState extends Equatable {
  ProfileTwentyfiveState({this.profileTwentyfiveModelObj});

  ProfileTwentyfiveModel? profileTwentyfiveModelObj;

  @override
  List<Object?> get props => [
        profileTwentyfiveModelObj,
      ];
  ProfileTwentyfiveState copyWith(
      {ProfileTwentyfiveModel? profileTwentyfiveModelObj}) {
    return ProfileTwentyfiveState(
      profileTwentyfiveModelObj:
          profileTwentyfiveModelObj ?? this.profileTwentyfiveModelObj,
    );
  }
}
