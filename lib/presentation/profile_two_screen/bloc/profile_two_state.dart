// ignore_for_file: must_be_immutable

part of 'profile_two_bloc.dart';

/// Represents the state of ProfileTwo in the application.
class ProfileTwoState extends Equatable {
  ProfileTwoState({
    this.phoneNumberController,
    this.selectedCountry,
    this.profileTwoModelObj,
  });

  TextEditingController? phoneNumberController;

  ProfileTwoModel? profileTwoModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        profileTwoModelObj,
      ];
  ProfileTwoState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    ProfileTwoModel? profileTwoModelObj,
  }) {
    return ProfileTwoState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileTwoModelObj: profileTwoModelObj ?? this.profileTwoModelObj,
    );
  }
}
