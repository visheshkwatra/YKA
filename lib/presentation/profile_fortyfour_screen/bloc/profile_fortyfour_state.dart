// ignore_for_file: must_be_immutable

part of 'profile_fortyfour_bloc.dart';

/// Represents the state of ProfileFortyfour in the application.
class ProfileFortyfourState extends Equatable {
  ProfileFortyfourState({
    this.phoneNumberController,
    this.cprLabelController,
    this.selectedCountry,
    this.profileFortyfourModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprLabelController;

  ProfileFortyfourModel? profileFortyfourModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprLabelController,
        selectedCountry,
        profileFortyfourModelObj,
      ];
  ProfileFortyfourState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprLabelController,
    Country? selectedCountry,
    ProfileFortyfourModel? profileFortyfourModelObj,
  }) {
    return ProfileFortyfourState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprLabelController: cprLabelController ?? this.cprLabelController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileFortyfourModelObj:
          profileFortyfourModelObj ?? this.profileFortyfourModelObj,
    );
  }
}
