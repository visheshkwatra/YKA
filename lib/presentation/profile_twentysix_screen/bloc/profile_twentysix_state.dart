// ignore_for_file: must_be_immutable

part of 'profile_twentysix_bloc.dart';

/// Represents the state of ProfileTwentysix in the application.
class ProfileTwentysixState extends Equatable {
  ProfileTwentysixState({
    this.otpController,
    this.checkBox = false,
    this.profileTwentysixModelObj,
  });

  TextEditingController? otpController;

  ProfileTwentysixModel? profileTwentysixModelObj;

  bool checkBox;

  @override
  List<Object?> get props => [
        otpController,
        checkBox,
        profileTwentysixModelObj,
      ];
  ProfileTwentysixState copyWith({
    TextEditingController? otpController,
    bool? checkBox,
    ProfileTwentysixModel? profileTwentysixModelObj,
  }) {
    return ProfileTwentysixState(
      otpController: otpController ?? this.otpController,
      checkBox: checkBox ?? this.checkBox,
      profileTwentysixModelObj:
          profileTwentysixModelObj ?? this.profileTwentysixModelObj,
    );
  }
}
