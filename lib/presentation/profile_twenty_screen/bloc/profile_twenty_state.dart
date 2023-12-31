// ignore_for_file: must_be_immutable

part of 'profile_twenty_bloc.dart';

/// Represents the state of ProfileTwenty in the application.
class ProfileTwentyState extends Equatable {
  ProfileTwentyState({
    this.otpController,
    this.iAgreeToTheTerms = false,
    this.profileTwentyModelObj,
  });

  TextEditingController? otpController;

  ProfileTwentyModel? profileTwentyModelObj;

  bool iAgreeToTheTerms;

  @override
  List<Object?> get props => [
        otpController,
        iAgreeToTheTerms,
        profileTwentyModelObj,
      ];
  ProfileTwentyState copyWith({
    TextEditingController? otpController,
    bool? iAgreeToTheTerms,
    ProfileTwentyModel? profileTwentyModelObj,
  }) {
    return ProfileTwentyState(
      otpController: otpController ?? this.otpController,
      iAgreeToTheTerms: iAgreeToTheTerms ?? this.iAgreeToTheTerms,
      profileTwentyModelObj:
          profileTwentyModelObj ?? this.profileTwentyModelObj,
    );
  }
}
