// ignore_for_file: must_be_immutable

part of 'profile_twentythree_bloc.dart';

/// Represents the state of ProfileTwentythree in the application.
class ProfileTwentythreeState extends Equatable {
  ProfileTwentythreeState({
    this.otpController,
    this.iagreetothetermsofuse = false,
    this.profileTwentythreeModelObj,
  });

  TextEditingController? otpController;

  ProfileTwentythreeModel? profileTwentythreeModelObj;

  bool iagreetothetermsofuse;

  @override
  List<Object?> get props => [
        otpController,
        iagreetothetermsofuse,
        profileTwentythreeModelObj,
      ];
  ProfileTwentythreeState copyWith({
    TextEditingController? otpController,
    bool? iagreetothetermsofuse,
    ProfileTwentythreeModel? profileTwentythreeModelObj,
  }) {
    return ProfileTwentythreeState(
      otpController: otpController ?? this.otpController,
      iagreetothetermsofuse:
          iagreetothetermsofuse ?? this.iagreetothetermsofuse,
      profileTwentythreeModelObj:
          profileTwentythreeModelObj ?? this.profileTwentythreeModelObj,
    );
  }
}
