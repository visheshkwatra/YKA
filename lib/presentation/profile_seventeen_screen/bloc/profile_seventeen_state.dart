// ignore_for_file: must_be_immutable

part of 'profile_seventeen_bloc.dart';

/// Represents the state of ProfileSeventeen in the application.
class ProfileSeventeenState extends Equatable {
  ProfileSeventeenState({
    this.firstNameFieldController,
    this.lastNameFieldController,
    this.zipcodeFieldController,
    this.carDetailValueFieldController,
    this.profileSeventeenModelObj,
  });

  TextEditingController? firstNameFieldController;

  TextEditingController? lastNameFieldController;

  TextEditingController? zipcodeFieldController;

  TextEditingController? carDetailValueFieldController;

  ProfileSeventeenModel? profileSeventeenModelObj;

  @override
  List<Object?> get props => [
        firstNameFieldController,
        lastNameFieldController,
        zipcodeFieldController,
        carDetailValueFieldController,
        profileSeventeenModelObj,
      ];
  ProfileSeventeenState copyWith({
    TextEditingController? firstNameFieldController,
    TextEditingController? lastNameFieldController,
    TextEditingController? zipcodeFieldController,
    TextEditingController? carDetailValueFieldController,
    ProfileSeventeenModel? profileSeventeenModelObj,
  }) {
    return ProfileSeventeenState(
      firstNameFieldController:
          firstNameFieldController ?? this.firstNameFieldController,
      lastNameFieldController:
          lastNameFieldController ?? this.lastNameFieldController,
      zipcodeFieldController:
          zipcodeFieldController ?? this.zipcodeFieldController,
      carDetailValueFieldController:
          carDetailValueFieldController ?? this.carDetailValueFieldController,
      profileSeventeenModelObj:
          profileSeventeenModelObj ?? this.profileSeventeenModelObj,
    );
  }
}
