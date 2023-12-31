// ignore_for_file: must_be_immutable

part of 'profile_seventyone_bloc.dart';

/// Represents the state of ProfileSeventyone in the application.
class ProfileSeventyoneState extends Equatable {
  ProfileSeventyoneState({this.profileSeventyoneModelObj});

  ProfileSeventyoneModel? profileSeventyoneModelObj;

  @override
  List<Object?> get props => [
        profileSeventyoneModelObj,
      ];
  ProfileSeventyoneState copyWith(
      {ProfileSeventyoneModel? profileSeventyoneModelObj}) {
    return ProfileSeventyoneState(
      profileSeventyoneModelObj:
          profileSeventyoneModelObj ?? this.profileSeventyoneModelObj,
    );
  }
}
