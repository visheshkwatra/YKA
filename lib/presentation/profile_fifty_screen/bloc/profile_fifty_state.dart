// ignore_for_file: must_be_immutable

part of 'profile_fifty_bloc.dart';

/// Represents the state of ProfileFifty in the application.
class ProfileFiftyState extends Equatable {
  ProfileFiftyState({
    this.floatingTextFieldController,
    this.floatingTextFieldController1,
    this.floatingTextFieldController2,
    this.floatingTextFieldController3,
    this.profileFiftyModelObj,
  });

  TextEditingController? floatingTextFieldController;

  TextEditingController? floatingTextFieldController1;

  TextEditingController? floatingTextFieldController2;

  TextEditingController? floatingTextFieldController3;

  ProfileFiftyModel? profileFiftyModelObj;

  @override
  List<Object?> get props => [
        floatingTextFieldController,
        floatingTextFieldController1,
        floatingTextFieldController2,
        floatingTextFieldController3,
        profileFiftyModelObj,
      ];
  ProfileFiftyState copyWith({
    TextEditingController? floatingTextFieldController,
    TextEditingController? floatingTextFieldController1,
    TextEditingController? floatingTextFieldController2,
    TextEditingController? floatingTextFieldController3,
    ProfileFiftyModel? profileFiftyModelObj,
  }) {
    return ProfileFiftyState(
      floatingTextFieldController:
          floatingTextFieldController ?? this.floatingTextFieldController,
      floatingTextFieldController1:
          floatingTextFieldController1 ?? this.floatingTextFieldController1,
      floatingTextFieldController2:
          floatingTextFieldController2 ?? this.floatingTextFieldController2,
      floatingTextFieldController3:
          floatingTextFieldController3 ?? this.floatingTextFieldController3,
      profileFiftyModelObj: profileFiftyModelObj ?? this.profileFiftyModelObj,
    );
  }
}
