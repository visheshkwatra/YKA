// ignore_for_file: must_be_immutable

part of 'landing_page_two_bloc.dart';

/// Represents the state of LandingPageTwo in the application.
class LandingPageTwoState extends Equatable {
  LandingPageTwoState({
    this.phoneNumberController,
    this.cprNumberController,
    this.selectedCountry,
    this.landingPageTwoModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprNumberController;

  LandingPageTwoModel? landingPageTwoModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprNumberController,
        selectedCountry,
        landingPageTwoModelObj,
      ];
  LandingPageTwoState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprNumberController,
    Country? selectedCountry,
    LandingPageTwoModel? landingPageTwoModelObj,
  }) {
    return LandingPageTwoState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprNumberController: cprNumberController ?? this.cprNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      landingPageTwoModelObj:
          landingPageTwoModelObj ?? this.landingPageTwoModelObj,
    );
  }
}
