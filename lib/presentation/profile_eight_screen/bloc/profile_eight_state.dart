// ignore_for_file: must_be_immutable

part of 'profile_eight_bloc.dart';

/// Represents the state of ProfileEight in the application.
class ProfileEightState extends Equatable {
  ProfileEightState({
    this.otpController,
    this.iAgreeToTheTerms = false,
    this.profileEightModelObj,
  });

  TextEditingController? otpController;

  ProfileEightModel? profileEightModelObj;

  bool iAgreeToTheTerms;

  @override
  List<Object?> get props => [
        otpController,
        iAgreeToTheTerms,
        profileEightModelObj,
      ];
  ProfileEightState copyWith({
    TextEditingController? otpController,
    bool? iAgreeToTheTerms,
    ProfileEightModel? profileEightModelObj,
  }) {
    return ProfileEightState(
      otpController: otpController ?? this.otpController,
      iAgreeToTheTerms: iAgreeToTheTerms ?? this.iAgreeToTheTerms,
      profileEightModelObj: profileEightModelObj ?? this.profileEightModelObj,
    );
  }
}
