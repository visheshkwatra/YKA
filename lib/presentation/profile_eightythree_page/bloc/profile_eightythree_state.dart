// ignore_for_file: must_be_immutable

part of 'profile_eightythree_bloc.dart';

/// Represents the state of ProfileEightythree in the application.
class ProfileEightythreeState extends Equatable {
  ProfileEightythreeState({this.profileEightythreeModelObj});

  ProfileEightythreeModel? profileEightythreeModelObj;

  @override
  List<Object?> get props => [
        profileEightythreeModelObj,
      ];
  ProfileEightythreeState copyWith(
      {ProfileEightythreeModel? profileEightythreeModelObj}) {
    return ProfileEightythreeState(
      profileEightythreeModelObj:
          profileEightythreeModelObj ?? this.profileEightythreeModelObj,
    );
  }
}
