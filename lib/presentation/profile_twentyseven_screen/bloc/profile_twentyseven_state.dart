// ignore_for_file: must_be_immutable

part of 'profile_twentyseven_bloc.dart';

/// Represents the state of ProfileTwentyseven in the application.
class ProfileTwentysevenState extends Equatable {
  ProfileTwentysevenState({
    this.phoneNumberController,
    this.cprLabelController,
    this.selectedCountry,
    this.profileTwentysevenModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprLabelController;

  ProfileTwentysevenModel? profileTwentysevenModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprLabelController,
        selectedCountry,
        profileTwentysevenModelObj,
      ];
  ProfileTwentysevenState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprLabelController,
    Country? selectedCountry,
    ProfileTwentysevenModel? profileTwentysevenModelObj,
  }) {
    return ProfileTwentysevenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprLabelController: cprLabelController ?? this.cprLabelController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileTwentysevenModelObj:
          profileTwentysevenModelObj ?? this.profileTwentysevenModelObj,
    );
  }
}
