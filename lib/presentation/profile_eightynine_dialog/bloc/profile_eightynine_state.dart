// ignore_for_file: must_be_immutable

part of 'profile_eightynine_bloc.dart';

/// Represents the state of ProfileEightynine in the application.
class ProfileEightynineState extends Equatable {
  ProfileEightynineState({this.profileEightynineModelObj});

  ProfileEightynineModel? profileEightynineModelObj;

  @override
  List<Object?> get props => [
        profileEightynineModelObj,
      ];
  ProfileEightynineState copyWith(
      {ProfileEightynineModel? profileEightynineModelObj}) {
    return ProfileEightynineState(
      profileEightynineModelObj:
          profileEightynineModelObj ?? this.profileEightynineModelObj,
    );
  }
}
