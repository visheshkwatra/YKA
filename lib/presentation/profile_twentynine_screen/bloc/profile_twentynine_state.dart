// ignore_for_file: must_be_immutable

part of 'profile_twentynine_bloc.dart';

/// Represents the state of ProfileTwentynine in the application.
class ProfileTwentynineState extends Equatable {
  ProfileTwentynineState({this.profileTwentynineModelObj});

  ProfileTwentynineModel? profileTwentynineModelObj;

  @override
  List<Object?> get props => [
        profileTwentynineModelObj,
      ];
  ProfileTwentynineState copyWith(
      {ProfileTwentynineModel? profileTwentynineModelObj}) {
    return ProfileTwentynineState(
      profileTwentynineModelObj:
          profileTwentynineModelObj ?? this.profileTwentynineModelObj,
    );
  }
}
