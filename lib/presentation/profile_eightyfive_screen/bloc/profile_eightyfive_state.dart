// ignore_for_file: must_be_immutable

part of 'profile_eightyfive_bloc.dart';

/// Represents the state of ProfileEightyfive in the application.
class ProfileEightyfiveState extends Equatable {
  ProfileEightyfiveState({this.profileEightyfiveModelObj});

  ProfileEightyfiveModel? profileEightyfiveModelObj;

  @override
  List<Object?> get props => [
        profileEightyfiveModelObj,
      ];
  ProfileEightyfiveState copyWith(
      {ProfileEightyfiveModel? profileEightyfiveModelObj}) {
    return ProfileEightyfiveState(
      profileEightyfiveModelObj:
          profileEightyfiveModelObj ?? this.profileEightyfiveModelObj,
    );
  }
}
