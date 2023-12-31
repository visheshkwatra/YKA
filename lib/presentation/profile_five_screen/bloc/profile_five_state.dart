// ignore_for_file: must_be_immutable

part of 'profile_five_bloc.dart';

/// Represents the state of ProfileFive in the application.
class ProfileFiveState extends Equatable {
  ProfileFiveState({
    this.otpController,
    this.iAgreeToTheTerms = false,
    this.profileFiveModelObj,
  });

  TextEditingController? otpController;

  ProfileFiveModel? profileFiveModelObj;

  bool iAgreeToTheTerms;

  @override
  List<Object?> get props => [
        otpController,
        iAgreeToTheTerms,
        profileFiveModelObj,
      ];
  ProfileFiveState copyWith({
    TextEditingController? otpController,
    bool? iAgreeToTheTerms,
    ProfileFiveModel? profileFiveModelObj,
  }) {
    return ProfileFiveState(
      otpController: otpController ?? this.otpController,
      iAgreeToTheTerms: iAgreeToTheTerms ?? this.iAgreeToTheTerms,
      profileFiveModelObj: profileFiveModelObj ?? this.profileFiveModelObj,
    );
  }
}
