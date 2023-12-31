// ignore_for_file: must_be_immutable

part of 'profile_nineteen_bloc.dart';

/// Represents the state of ProfileNineteen in the application.
class ProfileNineteenState extends Equatable {
  ProfileNineteenState({
    this.otpController,
    this.iAgreeToTheTerms = false,
    this.profileNineteenModelObj,
  });

  TextEditingController? otpController;

  ProfileNineteenModel? profileNineteenModelObj;

  bool iAgreeToTheTerms;

  @override
  List<Object?> get props => [
        otpController,
        iAgreeToTheTerms,
        profileNineteenModelObj,
      ];
  ProfileNineteenState copyWith({
    TextEditingController? otpController,
    bool? iAgreeToTheTerms,
    ProfileNineteenModel? profileNineteenModelObj,
  }) {
    return ProfileNineteenState(
      otpController: otpController ?? this.otpController,
      iAgreeToTheTerms: iAgreeToTheTerms ?? this.iAgreeToTheTerms,
      profileNineteenModelObj:
          profileNineteenModelObj ?? this.profileNineteenModelObj,
    );
  }
}
