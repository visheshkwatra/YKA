// ignore_for_file: must_be_immutable

part of 'profile_fourteen_bloc.dart';

/// Represents the state of ProfileFourteen in the application.
class ProfileFourteenState extends Equatable {
  ProfileFourteenState({this.profileFourteenModelObj});

  ProfileFourteenModel? profileFourteenModelObj;

  @override
  List<Object?> get props => [
        profileFourteenModelObj,
      ];
  ProfileFourteenState copyWith(
      {ProfileFourteenModel? profileFourteenModelObj}) {
    return ProfileFourteenState(
      profileFourteenModelObj:
          profileFourteenModelObj ?? this.profileFourteenModelObj,
    );
  }
}
