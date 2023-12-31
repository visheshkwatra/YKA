// ignore_for_file: must_be_immutable

part of 'profile_fiftysix_bloc.dart';

/// Represents the state of ProfileFiftysix in the application.
class ProfileFiftysixState extends Equatable {
  ProfileFiftysixState({this.profileFiftysixModelObj});

  ProfileFiftysixModel? profileFiftysixModelObj;

  @override
  List<Object?> get props => [
        profileFiftysixModelObj,
      ];
  ProfileFiftysixState copyWith(
      {ProfileFiftysixModel? profileFiftysixModelObj}) {
    return ProfileFiftysixState(
      profileFiftysixModelObj:
          profileFiftysixModelObj ?? this.profileFiftysixModelObj,
    );
  }
}
