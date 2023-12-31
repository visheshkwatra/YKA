// ignore_for_file: must_be_immutable

part of 'profile_seven_bloc.dart';

/// Represents the state of ProfileSeven in the application.
class ProfileSevenState extends Equatable {
  ProfileSevenState({
    this.phoneNumberController,
    this.selectedCountry,
    this.profileSevenModelObj,
  });

  TextEditingController? phoneNumberController;

  ProfileSevenModel? profileSevenModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        profileSevenModelObj,
      ];
  ProfileSevenState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    ProfileSevenModel? profileSevenModelObj,
  }) {
    return ProfileSevenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileSevenModelObj: profileSevenModelObj ?? this.profileSevenModelObj,
    );
  }
}
