// ignore_for_file: must_be_immutable

part of 'profile_seventy_bloc.dart';

/// Represents the state of ProfileSeventy in the application.
class ProfileSeventyState extends Equatable {
  ProfileSeventyState({this.profileSeventyModelObj});

  ProfileSeventyModel? profileSeventyModelObj;

  @override
  List<Object?> get props => [
        profileSeventyModelObj,
      ];
  ProfileSeventyState copyWith({ProfileSeventyModel? profileSeventyModelObj}) {
    return ProfileSeventyState(
      profileSeventyModelObj:
          profileSeventyModelObj ?? this.profileSeventyModelObj,
    );
  }
}
