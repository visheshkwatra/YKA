// ignore_for_file: must_be_immutable

part of 'profile_seventytwo_bloc.dart';

/// Represents the state of ProfileSeventytwo in the application.
class ProfileSeventytwoState extends Equatable {
  ProfileSeventytwoState({this.profileSeventytwoModelObj});

  ProfileSeventytwoModel? profileSeventytwoModelObj;

  @override
  List<Object?> get props => [
        profileSeventytwoModelObj,
      ];
  ProfileSeventytwoState copyWith(
      {ProfileSeventytwoModel? profileSeventytwoModelObj}) {
    return ProfileSeventytwoState(
      profileSeventytwoModelObj:
          profileSeventytwoModelObj ?? this.profileSeventytwoModelObj,
    );
  }
}
