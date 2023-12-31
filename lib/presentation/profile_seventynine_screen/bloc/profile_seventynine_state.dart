// ignore_for_file: must_be_immutable

part of 'profile_seventynine_bloc.dart';

/// Represents the state of ProfileSeventynine in the application.
class ProfileSeventynineState extends Equatable {
  ProfileSeventynineState({
    this.entercouponcodeController,
    this.iAgreeToTheTermsCheckBox = false,
    this.profileSeventynineModelObj,
  });

  TextEditingController? entercouponcodeController;

  ProfileSeventynineModel? profileSeventynineModelObj;

  bool iAgreeToTheTermsCheckBox;

  @override
  List<Object?> get props => [
        entercouponcodeController,
        iAgreeToTheTermsCheckBox,
        profileSeventynineModelObj,
      ];
  ProfileSeventynineState copyWith({
    TextEditingController? entercouponcodeController,
    bool? iAgreeToTheTermsCheckBox,
    ProfileSeventynineModel? profileSeventynineModelObj,
  }) {
    return ProfileSeventynineState(
      entercouponcodeController:
          entercouponcodeController ?? this.entercouponcodeController,
      iAgreeToTheTermsCheckBox:
          iAgreeToTheTermsCheckBox ?? this.iAgreeToTheTermsCheckBox,
      profileSeventynineModelObj:
          profileSeventynineModelObj ?? this.profileSeventynineModelObj,
    );
  }
}
