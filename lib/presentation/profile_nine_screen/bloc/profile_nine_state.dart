// ignore_for_file: must_be_immutable

part of 'profile_nine_bloc.dart';

/// Represents the state of ProfileNine in the application.
class ProfileNineState extends Equatable {
  ProfileNineState({
    this.zipCodeTextFieldController,
    this.mobileNumberTextFieldController,
    this.secondaryZipCodeTextFieldController,
    this.zipCodeTextFieldController1,
    this.profileNineModelObj,
  });

  TextEditingController? zipCodeTextFieldController;

  TextEditingController? mobileNumberTextFieldController;

  TextEditingController? secondaryZipCodeTextFieldController;

  TextEditingController? zipCodeTextFieldController1;

  ProfileNineModel? profileNineModelObj;

  @override
  List<Object?> get props => [
        zipCodeTextFieldController,
        mobileNumberTextFieldController,
        secondaryZipCodeTextFieldController,
        zipCodeTextFieldController1,
        profileNineModelObj,
      ];
  ProfileNineState copyWith({
    TextEditingController? zipCodeTextFieldController,
    TextEditingController? mobileNumberTextFieldController,
    TextEditingController? secondaryZipCodeTextFieldController,
    TextEditingController? zipCodeTextFieldController1,
    ProfileNineModel? profileNineModelObj,
  }) {
    return ProfileNineState(
      zipCodeTextFieldController:
          zipCodeTextFieldController ?? this.zipCodeTextFieldController,
      mobileNumberTextFieldController: mobileNumberTextFieldController ??
          this.mobileNumberTextFieldController,
      secondaryZipCodeTextFieldController:
          secondaryZipCodeTextFieldController ??
              this.secondaryZipCodeTextFieldController,
      zipCodeTextFieldController1:
          zipCodeTextFieldController1 ?? this.zipCodeTextFieldController1,
      profileNineModelObj: profileNineModelObj ?? this.profileNineModelObj,
    );
  }
}
