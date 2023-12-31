// ignore_for_file: must_be_immutable

part of 'profile_sixteen_bloc.dart';

/// Represents the state of ProfileSixteen in the application.
class ProfileSixteenState extends Equatable {
  ProfileSixteenState({
    this.phoneNumberController,
    this.cprLabelController,
    this.selectedCountry,
    this.profileSixteenModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprLabelController;

  ProfileSixteenModel? profileSixteenModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprLabelController,
        selectedCountry,
        profileSixteenModelObj,
      ];
  ProfileSixteenState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprLabelController,
    Country? selectedCountry,
    ProfileSixteenModel? profileSixteenModelObj,
  }) {
    return ProfileSixteenState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprLabelController: cprLabelController ?? this.cprLabelController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileSixteenModelObj:
          profileSixteenModelObj ?? this.profileSixteenModelObj,
    );
  }
}
