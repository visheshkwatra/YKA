// ignore_for_file: must_be_immutable

part of 'profile_eightyone_bloc.dart';

/// Represents the state of ProfileEightyone in the application.
class ProfileEightyoneState extends Equatable {
  ProfileEightyoneState({
    this.iAgreeToTheTermsCheckBox = false,
    this.profileEightyoneModelObj,
  });

  ProfileEightyoneModel? profileEightyoneModelObj;

  bool iAgreeToTheTermsCheckBox;

  @override
  List<Object?> get props => [
        iAgreeToTheTermsCheckBox,
        profileEightyoneModelObj,
      ];
  ProfileEightyoneState copyWith({
    bool? iAgreeToTheTermsCheckBox,
    ProfileEightyoneModel? profileEightyoneModelObj,
  }) {
    return ProfileEightyoneState(
      iAgreeToTheTermsCheckBox:
          iAgreeToTheTermsCheckBox ?? this.iAgreeToTheTermsCheckBox,
      profileEightyoneModelObj:
          profileEightyoneModelObj ?? this.profileEightyoneModelObj,
    );
  }
}
