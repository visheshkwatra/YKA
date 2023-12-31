// ignore_for_file: must_be_immutable

part of 'profile_sixtytwo_bloc.dart';

/// Represents the state of ProfileSixtytwo in the application.
class ProfileSixtytwoState extends Equatable {
  ProfileSixtytwoState({
    this.floatingTextFieldController,
    this.floatingTextFieldController1,
    this.phoneNumberController,
    this.floatingTextFieldController2,
    this.selectedCountry,
    this.profileSixtytwoModelObj,
  });

  TextEditingController? floatingTextFieldController;

  TextEditingController? floatingTextFieldController1;

  TextEditingController? phoneNumberController;

  TextEditingController? floatingTextFieldController2;

  ProfileSixtytwoModel? profileSixtytwoModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        floatingTextFieldController,
        floatingTextFieldController1,
        phoneNumberController,
        floatingTextFieldController2,
        selectedCountry,
        profileSixtytwoModelObj,
      ];
  ProfileSixtytwoState copyWith({
    TextEditingController? floatingTextFieldController,
    TextEditingController? floatingTextFieldController1,
    TextEditingController? phoneNumberController,
    TextEditingController? floatingTextFieldController2,
    Country? selectedCountry,
    ProfileSixtytwoModel? profileSixtytwoModelObj,
  }) {
    return ProfileSixtytwoState(
      floatingTextFieldController:
          floatingTextFieldController ?? this.floatingTextFieldController,
      floatingTextFieldController1:
          floatingTextFieldController1 ?? this.floatingTextFieldController1,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      floatingTextFieldController2:
          floatingTextFieldController2 ?? this.floatingTextFieldController2,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileSixtytwoModelObj:
          profileSixtytwoModelObj ?? this.profileSixtytwoModelObj,
    );
  }
}
