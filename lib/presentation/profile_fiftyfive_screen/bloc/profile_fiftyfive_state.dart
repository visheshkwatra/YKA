// ignore_for_file: must_be_immutable

part of 'profile_fiftyfive_bloc.dart';

/// Represents the state of ProfileFiftyfive in the application.
class ProfileFiftyfiveState extends Equatable {
  ProfileFiftyfiveState({
    this.floatingTextFieldController,
    this.floatingTextFieldController1,
    this.floatingTextFieldController2,
    this.floatingTextFieldController3,
    this.profileFiftyfiveModelObj,
  });

  TextEditingController? floatingTextFieldController;

  TextEditingController? floatingTextFieldController1;

  TextEditingController? floatingTextFieldController2;

  TextEditingController? floatingTextFieldController3;

  ProfileFiftyfiveModel? profileFiftyfiveModelObj;

  @override
  List<Object?> get props => [
        floatingTextFieldController,
        floatingTextFieldController1,
        floatingTextFieldController2,
        floatingTextFieldController3,
        profileFiftyfiveModelObj,
      ];
  ProfileFiftyfiveState copyWith({
    TextEditingController? floatingTextFieldController,
    TextEditingController? floatingTextFieldController1,
    TextEditingController? floatingTextFieldController2,
    TextEditingController? floatingTextFieldController3,
    ProfileFiftyfiveModel? profileFiftyfiveModelObj,
  }) {
    return ProfileFiftyfiveState(
      floatingTextFieldController:
          floatingTextFieldController ?? this.floatingTextFieldController,
      floatingTextFieldController1:
          floatingTextFieldController1 ?? this.floatingTextFieldController1,
      floatingTextFieldController2:
          floatingTextFieldController2 ?? this.floatingTextFieldController2,
      floatingTextFieldController3:
          floatingTextFieldController3 ?? this.floatingTextFieldController3,
      profileFiftyfiveModelObj:
          profileFiftyfiveModelObj ?? this.profileFiftyfiveModelObj,
    );
  }
}
