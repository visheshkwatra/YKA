// ignore_for_file: must_be_immutable

part of 'profile_twelve_bloc.dart';

/// Represents the state of ProfileTwelve in the application.
class ProfileTwelveState extends Equatable {
  ProfileTwelveState({this.profileTwelveModelObj});

  ProfileTwelveModel? profileTwelveModelObj;

  @override
  List<Object?> get props => [
        profileTwelveModelObj,
      ];
  ProfileTwelveState copyWith({ProfileTwelveModel? profileTwelveModelObj}) {
    return ProfileTwelveState(
      profileTwelveModelObj:
          profileTwelveModelObj ?? this.profileTwelveModelObj,
    );
  }
}
