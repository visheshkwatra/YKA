// ignore_for_file: must_be_immutable

part of 'profile_eightyfour_bloc.dart';

/// Represents the state of ProfileEightyfour in the application.
class ProfileEightyfourState extends Equatable {
  ProfileEightyfourState({this.profileEightyfourModelObj});

  ProfileEightyfourModel? profileEightyfourModelObj;

  @override
  List<Object?> get props => [
        profileEightyfourModelObj,
      ];
  ProfileEightyfourState copyWith(
      {ProfileEightyfourModel? profileEightyfourModelObj}) {
    return ProfileEightyfourState(
      profileEightyfourModelObj:
          profileEightyfourModelObj ?? this.profileEightyfourModelObj,
    );
  }
}
