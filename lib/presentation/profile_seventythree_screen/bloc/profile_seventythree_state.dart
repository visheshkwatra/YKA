// ignore_for_file: must_be_immutable

part of 'profile_seventythree_bloc.dart';

/// Represents the state of ProfileSeventythree in the application.
class ProfileSeventythreeState extends Equatable {
  ProfileSeventythreeState({this.profileSeventythreeModelObj});

  ProfileSeventythreeModel? profileSeventythreeModelObj;

  @override
  List<Object?> get props => [
        profileSeventythreeModelObj,
      ];
  ProfileSeventythreeState copyWith(
      {ProfileSeventythreeModel? profileSeventythreeModelObj}) {
    return ProfileSeventythreeState(
      profileSeventythreeModelObj:
          profileSeventythreeModelObj ?? this.profileSeventythreeModelObj,
    );
  }
}
