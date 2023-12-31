// ignore_for_file: must_be_immutable

part of 'profile_twentyone_bloc.dart';

/// Represents the state of ProfileTwentyone in the application.
class ProfileTwentyoneState extends Equatable {
  ProfileTwentyoneState({
    this.firstNameFieldController,
    this.lastNameFieldController,
    this.zipcodeFieldController,
    this.profileTwentyoneModelObj,
  });

  TextEditingController? firstNameFieldController;

  TextEditingController? lastNameFieldController;

  TextEditingController? zipcodeFieldController;

  ProfileTwentyoneModel? profileTwentyoneModelObj;

  @override
  List<Object?> get props => [
        firstNameFieldController,
        lastNameFieldController,
        zipcodeFieldController,
        profileTwentyoneModelObj,
      ];
  ProfileTwentyoneState copyWith({
    TextEditingController? firstNameFieldController,
    TextEditingController? lastNameFieldController,
    TextEditingController? zipcodeFieldController,
    ProfileTwentyoneModel? profileTwentyoneModelObj,
  }) {
    return ProfileTwentyoneState(
      firstNameFieldController:
          firstNameFieldController ?? this.firstNameFieldController,
      lastNameFieldController:
          lastNameFieldController ?? this.lastNameFieldController,
      zipcodeFieldController:
          zipcodeFieldController ?? this.zipcodeFieldController,
      profileTwentyoneModelObj:
          profileTwentyoneModelObj ?? this.profileTwentyoneModelObj,
    );
  }
}
