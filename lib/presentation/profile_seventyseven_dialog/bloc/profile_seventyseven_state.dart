// ignore_for_file: must_be_immutable

part of 'profile_seventyseven_bloc.dart';

/// Represents the state of ProfileSeventyseven in the application.
class ProfileSeventysevenState extends Equatable {
  ProfileSeventysevenState({this.profileSeventysevenModelObj});

  ProfileSeventysevenModel? profileSeventysevenModelObj;

  @override
  List<Object?> get props => [
        profileSeventysevenModelObj,
      ];
  ProfileSeventysevenState copyWith(
      {ProfileSeventysevenModel? profileSeventysevenModelObj}) {
    return ProfileSeventysevenState(
      profileSeventysevenModelObj:
          profileSeventysevenModelObj ?? this.profileSeventysevenModelObj,
    );
  }
}
