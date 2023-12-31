// ignore_for_file: must_be_immutable

part of 'profile_eightyseven_bloc.dart';

/// Represents the state of ProfileEightyseven in the application.
class ProfileEightysevenState extends Equatable {
  ProfileEightysevenState({this.profileEightysevenModelObj});

  ProfileEightysevenModel? profileEightysevenModelObj;

  @override
  List<Object?> get props => [
        profileEightysevenModelObj,
      ];
  ProfileEightysevenState copyWith(
      {ProfileEightysevenModel? profileEightysevenModelObj}) {
    return ProfileEightysevenState(
      profileEightysevenModelObj:
          profileEightysevenModelObj ?? this.profileEightysevenModelObj,
    );
  }
}
