// ignore_for_file: must_be_immutable

part of 'profile_seventyfour_bloc.dart';

/// Represents the state of ProfileSeventyfour in the application.
class ProfileSeventyfourState extends Equatable {
  ProfileSeventyfourState({
    this.floatingTextFieldController,
    this.floatingTextFieldController1,
    this.phoneNumberController,
    this.floatingTextFieldController2,
    this.selectedCountry,
    this.profileSeventyfourModelObj,
  });

  TextEditingController? floatingTextFieldController;

  TextEditingController? floatingTextFieldController1;

  TextEditingController? phoneNumberController;

  TextEditingController? floatingTextFieldController2;

  ProfileSeventyfourModel? profileSeventyfourModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        floatingTextFieldController,
        floatingTextFieldController1,
        phoneNumberController,
        floatingTextFieldController2,
        selectedCountry,
        profileSeventyfourModelObj,
      ];
  ProfileSeventyfourState copyWith({
    TextEditingController? floatingTextFieldController,
    TextEditingController? floatingTextFieldController1,
    TextEditingController? phoneNumberController,
    TextEditingController? floatingTextFieldController2,
    Country? selectedCountry,
    ProfileSeventyfourModel? profileSeventyfourModelObj,
  }) {
    return ProfileSeventyfourState(
      floatingTextFieldController:
          floatingTextFieldController ?? this.floatingTextFieldController,
      floatingTextFieldController1:
          floatingTextFieldController1 ?? this.floatingTextFieldController1,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      floatingTextFieldController2:
          floatingTextFieldController2 ?? this.floatingTextFieldController2,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileSeventyfourModelObj:
          profileSeventyfourModelObj ?? this.profileSeventyfourModelObj,
    );
  }
}
