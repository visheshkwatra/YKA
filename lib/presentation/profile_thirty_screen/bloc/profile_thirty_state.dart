// ignore_for_file: must_be_immutable

part of 'profile_thirty_bloc.dart';

/// Represents the state of ProfileThirty in the application.
class ProfileThirtyState extends Equatable {
  ProfileThirtyState({
    this.phoneNumberController,
    this.cprController,
    this.selectedCountry,
    this.profileThirtyModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? cprController;

  ProfileThirtyModel? profileThirtyModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        cprController,
        selectedCountry,
        profileThirtyModelObj,
      ];
  ProfileThirtyState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? cprController,
    Country? selectedCountry,
    ProfileThirtyModel? profileThirtyModelObj,
  }) {
    return ProfileThirtyState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      cprController: cprController ?? this.cprController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileThirtyModelObj:
          profileThirtyModelObj ?? this.profileThirtyModelObj,
    );
  }
}
