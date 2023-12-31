// ignore_for_file: must_be_immutable

part of 'landing_page_three_bloc.dart';

/// Represents the state of LandingPageThree in the application.
class LandingPageThreeState extends Equatable {
  LandingPageThreeState({
    this.phoneNumberController,
    this.cprNumberController,
    this.selectedCountry,
    this.landingPageThreeModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprNumberController;

  LandingPageThreeModel? landingPageThreeModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprNumberController,
        selectedCountry,
        landingPageThreeModelObj,
      ];
  LandingPageThreeState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprNumberController,
    Country? selectedCountry,
    LandingPageThreeModel? landingPageThreeModelObj,
  }) {
    return LandingPageThreeState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprNumberController: cprNumberController ?? this.cprNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      landingPageThreeModelObj:
          landingPageThreeModelObj ?? this.landingPageThreeModelObj,
    );
  }
}
