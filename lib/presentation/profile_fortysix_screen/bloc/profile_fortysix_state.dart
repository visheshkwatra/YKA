// ignore_for_file: must_be_immutable

part of 'profile_fortysix_bloc.dart';

/// Represents the state of ProfileFortysix in the application.
class ProfileFortysixState extends Equatable {
  ProfileFortysixState({this.profileFortysixModelObj});

  ProfileFortysixModel? profileFortysixModelObj;

  @override
  List<Object?> get props => [
        profileFortysixModelObj,
      ];
  ProfileFortysixState copyWith(
      {ProfileFortysixModel? profileFortysixModelObj}) {
    return ProfileFortysixState(
      profileFortysixModelObj:
          profileFortysixModelObj ?? this.profileFortysixModelObj,
    );
  }
}
