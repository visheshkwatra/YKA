// ignore_for_file: must_be_immutable

part of 'profile_ninetyone_bloc.dart';

/// Represents the state of ProfileNinetyone in the application.
class ProfileNinetyoneState extends Equatable {
  ProfileNinetyoneState({
    this.iAgreeToTheTermsCheckBox = false,
    this.profileNinetyoneModelObj,
  });

  ProfileNinetyoneModel? profileNinetyoneModelObj;

  bool iAgreeToTheTermsCheckBox;

  @override
  List<Object?> get props => [
        iAgreeToTheTermsCheckBox,
        profileNinetyoneModelObj,
      ];
  ProfileNinetyoneState copyWith({
    bool? iAgreeToTheTermsCheckBox,
    ProfileNinetyoneModel? profileNinetyoneModelObj,
  }) {
    return ProfileNinetyoneState(
      iAgreeToTheTermsCheckBox:
          iAgreeToTheTermsCheckBox ?? this.iAgreeToTheTermsCheckBox,
      profileNinetyoneModelObj:
          profileNinetyoneModelObj ?? this.profileNinetyoneModelObj,
    );
  }
}
