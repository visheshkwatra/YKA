// ignore_for_file: must_be_immutable

part of 'profile_one_bloc.dart';

/// Represents the state of ProfileOne in the application.
class ProfileOneState extends Equatable {
  ProfileOneState({
    this.phoneNumberController,
    this.selectedCountry,
    this.profileOneModelObj,
  });

  TextEditingController? phoneNumberController;

  ProfileOneModel? profileOneModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        profileOneModelObj,
      ];
  ProfileOneState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    ProfileOneModel? profileOneModelObj,
  }) {
    return ProfileOneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileOneModelObj: profileOneModelObj ?? this.profileOneModelObj,
    );
  }
}
