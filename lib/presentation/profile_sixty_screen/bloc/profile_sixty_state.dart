// ignore_for_file: must_be_immutable

part of 'profile_sixty_bloc.dart';

/// Represents the state of ProfileSixty in the application.
class ProfileSixtyState extends Equatable {
  ProfileSixtyState({this.profileSixtyModelObj});

  ProfileSixtyModel? profileSixtyModelObj;

  @override
  List<Object?> get props => [
        profileSixtyModelObj,
      ];
  ProfileSixtyState copyWith({ProfileSixtyModel? profileSixtyModelObj}) {
    return ProfileSixtyState(
      profileSixtyModelObj: profileSixtyModelObj ?? this.profileSixtyModelObj,
    );
  }
}
