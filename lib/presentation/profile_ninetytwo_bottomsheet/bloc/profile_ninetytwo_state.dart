// ignore_for_file: must_be_immutable

part of 'profile_ninetytwo_bloc.dart';

/// Represents the state of ProfileNinetytwo in the application.
class ProfileNinetytwoState extends Equatable {
  ProfileNinetytwoState({
    this.houseFlatBlockNoEditTextController,
    this.apartmentRoadAreaEditTextController,
    this.landmarkEditTextController,
    this.descriptionEditTextController,
    this.profileNinetytwoModelObj,
  });

  TextEditingController? houseFlatBlockNoEditTextController;

  TextEditingController? apartmentRoadAreaEditTextController;

  TextEditingController? landmarkEditTextController;

  TextEditingController? descriptionEditTextController;

  ProfileNinetytwoModel? profileNinetytwoModelObj;

  @override
  List<Object?> get props => [
        houseFlatBlockNoEditTextController,
        apartmentRoadAreaEditTextController,
        landmarkEditTextController,
        descriptionEditTextController,
        profileNinetytwoModelObj,
      ];
  ProfileNinetytwoState copyWith({
    TextEditingController? houseFlatBlockNoEditTextController,
    TextEditingController? apartmentRoadAreaEditTextController,
    TextEditingController? landmarkEditTextController,
    TextEditingController? descriptionEditTextController,
    ProfileNinetytwoModel? profileNinetytwoModelObj,
  }) {
    return ProfileNinetytwoState(
      houseFlatBlockNoEditTextController: houseFlatBlockNoEditTextController ??
          this.houseFlatBlockNoEditTextController,
      apartmentRoadAreaEditTextController:
          apartmentRoadAreaEditTextController ??
              this.apartmentRoadAreaEditTextController,
      landmarkEditTextController:
          landmarkEditTextController ?? this.landmarkEditTextController,
      descriptionEditTextController:
          descriptionEditTextController ?? this.descriptionEditTextController,
      profileNinetytwoModelObj:
          profileNinetytwoModelObj ?? this.profileNinetytwoModelObj,
    );
  }
}
