// ignore_for_file: must_be_immutable

part of 'profile_three_bloc.dart';

/// Represents the state of ProfileThree in the application.
class ProfileThreeState extends Equatable {
  ProfileThreeState({
    this.phoneNumberController,
    this.cprController,
    this.selectedCountry,
    this.profileThreeModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprController;

  ProfileThreeModel? profileThreeModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprController,
        selectedCountry,
        profileThreeModelObj,
      ];
  ProfileThreeState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprController,
    Country? selectedCountry,
    ProfileThreeModel? profileThreeModelObj,
  }) {
    return ProfileThreeState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprController: cprController ?? this.cprController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileThreeModelObj: profileThreeModelObj ?? this.profileThreeModelObj,
    );
  }
}
