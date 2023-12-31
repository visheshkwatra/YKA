// ignore_for_file: must_be_immutable

part of 'landing_page_one_bloc.dart';

/// Represents the state of LandingPageOne in the application.
class LandingPageOneState extends Equatable {
  LandingPageOneState({
    this.phoneNumberController,
    this.cprNumberController,
    this.selectedCountry,
    this.landingPageOneModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprNumberController;

  LandingPageOneModel? landingPageOneModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprNumberController,
        selectedCountry,
        landingPageOneModelObj,
      ];
  LandingPageOneState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprNumberController,
    Country? selectedCountry,
    LandingPageOneModel? landingPageOneModelObj,
  }) {
    return LandingPageOneState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprNumberController: cprNumberController ?? this.cprNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      landingPageOneModelObj:
          landingPageOneModelObj ?? this.landingPageOneModelObj,
    );
  }
}
