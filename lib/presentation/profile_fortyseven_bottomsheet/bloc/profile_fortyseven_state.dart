// ignore_for_file: must_be_immutable

part of 'profile_fortyseven_bloc.dart';

/// Represents the state of ProfileFortyseven in the application.
class ProfileFortysevenState extends Equatable {
  ProfileFortysevenState({
    this.houseFlatBlockNoEditTextController,
    this.apartmentRoadAreaEditTextController,
    this.landmarkOptionalEditTextController,
    this.descriptionOptionalEditTextController,
    this.profileFortysevenModelObj,
  });

  TextEditingController? houseFlatBlockNoEditTextController;

  TextEditingController? apartmentRoadAreaEditTextController;

  TextEditingController? landmarkOptionalEditTextController;

  TextEditingController? descriptionOptionalEditTextController;

  ProfileFortysevenModel? profileFortysevenModelObj;

  @override
  List<Object?> get props => [
        houseFlatBlockNoEditTextController,
        apartmentRoadAreaEditTextController,
        landmarkOptionalEditTextController,
        descriptionOptionalEditTextController,
        profileFortysevenModelObj,
      ];
  ProfileFortysevenState copyWith({
    TextEditingController? houseFlatBlockNoEditTextController,
    TextEditingController? apartmentRoadAreaEditTextController,
    TextEditingController? landmarkOptionalEditTextController,
    TextEditingController? descriptionOptionalEditTextController,
    ProfileFortysevenModel? profileFortysevenModelObj,
  }) {
    return ProfileFortysevenState(
      houseFlatBlockNoEditTextController: houseFlatBlockNoEditTextController ??
          this.houseFlatBlockNoEditTextController,
      apartmentRoadAreaEditTextController:
          apartmentRoadAreaEditTextController ??
              this.apartmentRoadAreaEditTextController,
      landmarkOptionalEditTextController: landmarkOptionalEditTextController ??
          this.landmarkOptionalEditTextController,
      descriptionOptionalEditTextController:
          descriptionOptionalEditTextController ??
              this.descriptionOptionalEditTextController,
      profileFortysevenModelObj:
          profileFortysevenModelObj ?? this.profileFortysevenModelObj,
    );
  }
}
