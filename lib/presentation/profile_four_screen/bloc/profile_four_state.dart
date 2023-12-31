// ignore_for_file: must_be_immutable

part of 'profile_four_bloc.dart';

/// Represents the state of ProfileFour in the application.
class ProfileFourState extends Equatable {
  ProfileFourState({
    this.firstNameFieldController,
    this.lastNameFieldController,
    this.zipcodeFieldController,
    this.profileFourModelObj,
  });

  TextEditingController? firstNameFieldController;

  TextEditingController? lastNameFieldController;

  TextEditingController? zipcodeFieldController;

  ProfileFourModel? profileFourModelObj;

  @override
  List<Object?> get props => [
        firstNameFieldController,
        lastNameFieldController,
        zipcodeFieldController,
        profileFourModelObj,
      ];
  ProfileFourState copyWith({
    TextEditingController? firstNameFieldController,
    TextEditingController? lastNameFieldController,
    TextEditingController? zipcodeFieldController,
    ProfileFourModel? profileFourModelObj,
  }) {
    return ProfileFourState(
      firstNameFieldController:
          firstNameFieldController ?? this.firstNameFieldController,
      lastNameFieldController:
          lastNameFieldController ?? this.lastNameFieldController,
      zipcodeFieldController:
          zipcodeFieldController ?? this.zipcodeFieldController,
      profileFourModelObj: profileFourModelObj ?? this.profileFourModelObj,
    );
  }
}
