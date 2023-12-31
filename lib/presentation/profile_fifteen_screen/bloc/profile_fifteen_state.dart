// ignore_for_file: must_be_immutable

part of 'profile_fifteen_bloc.dart';

/// Represents the state of ProfileFifteen in the application.
class ProfileFifteenState extends Equatable {
  ProfileFifteenState({
    this.phoneNumberController,
    this.selectedCountry,
    this.profileFifteenModelObj,
  });

  TextEditingController? phoneNumberController;

  ProfileFifteenModel? profileFifteenModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        profileFifteenModelObj,
      ];
  ProfileFifteenState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    ProfileFifteenModel? profileFifteenModelObj,
  }) {
    return ProfileFifteenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileFifteenModelObj:
          profileFifteenModelObj ?? this.profileFifteenModelObj,
    );
  }
}
