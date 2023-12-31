// ignore_for_file: must_be_immutable

part of 'profile_ninety_bloc.dart';

/// Represents the state of ProfileNinety in the application.
class ProfileNinetyState extends Equatable {
  ProfileNinetyState({this.profileNinetyModelObj});

  ProfileNinetyModel? profileNinetyModelObj;

  @override
  List<Object?> get props => [
        profileNinetyModelObj,
      ];
  ProfileNinetyState copyWith({ProfileNinetyModel? profileNinetyModelObj}) {
    return ProfileNinetyState(
      profileNinetyModelObj:
          profileNinetyModelObj ?? this.profileNinetyModelObj,
    );
  }
}
