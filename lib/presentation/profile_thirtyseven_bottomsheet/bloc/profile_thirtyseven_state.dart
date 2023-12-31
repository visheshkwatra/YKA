// ignore_for_file: must_be_immutable

part of 'profile_thirtyseven_bloc.dart';

/// Represents the state of ProfileThirtyseven in the application.
class ProfileThirtysevenState extends Equatable {
  ProfileThirtysevenState({
    this.houseFlatBlockNoEditTextController,
    this.apartmentRoadAreaEditTextController,
    this.landmarkOptionalEditTextController,
    this.descriptionOptionalEditTextController,
    this.profileThirtysevenModelObj,
  });

  TextEditingController? houseFlatBlockNoEditTextController;

  TextEditingController? apartmentRoadAreaEditTextController;

  TextEditingController? landmarkOptionalEditTextController;

  TextEditingController? descriptionOptionalEditTextController;

  ProfileThirtysevenModel? profileThirtysevenModelObj;

  @override
  List<Object?> get props => [
        houseFlatBlockNoEditTextController,
        apartmentRoadAreaEditTextController,
        landmarkOptionalEditTextController,
        descriptionOptionalEditTextController,
        profileThirtysevenModelObj,
      ];
  ProfileThirtysevenState copyWith({
    TextEditingController? houseFlatBlockNoEditTextController,
    TextEditingController? apartmentRoadAreaEditTextController,
    TextEditingController? landmarkOptionalEditTextController,
    TextEditingController? descriptionOptionalEditTextController,
    ProfileThirtysevenModel? profileThirtysevenModelObj,
  }) {
    return ProfileThirtysevenState(
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
      profileThirtysevenModelObj:
          profileThirtysevenModelObj ?? this.profileThirtysevenModelObj,
    );
  }
}
