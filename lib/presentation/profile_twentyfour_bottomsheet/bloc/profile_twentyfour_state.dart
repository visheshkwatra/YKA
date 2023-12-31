// ignore_for_file: must_be_immutable

part of 'profile_twentyfour_bloc.dart';

/// Represents the state of ProfileTwentyfour in the application.
class ProfileTwentyfourState extends Equatable {
  ProfileTwentyfourState({this.profileTwentyfourModelObj});

  ProfileTwentyfourModel? profileTwentyfourModelObj;

  @override
  List<Object?> get props => [
        profileTwentyfourModelObj,
      ];
  ProfileTwentyfourState copyWith(
      {ProfileTwentyfourModel? profileTwentyfourModelObj}) {
    return ProfileTwentyfourState(
      profileTwentyfourModelObj:
          profileTwentyfourModelObj ?? this.profileTwentyfourModelObj,
    );
  }
}
