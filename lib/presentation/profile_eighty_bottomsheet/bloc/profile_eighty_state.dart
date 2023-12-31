// ignore_for_file: must_be_immutable

part of 'profile_eighty_bloc.dart';

/// Represents the state of ProfileEighty in the application.
class ProfileEightyState extends Equatable {
  ProfileEightyState({this.profileEightyModelObj});

  ProfileEightyModel? profileEightyModelObj;

  @override
  List<Object?> get props => [
        profileEightyModelObj,
      ];
  ProfileEightyState copyWith({ProfileEightyModel? profileEightyModelObj}) {
    return ProfileEightyState(
      profileEightyModelObj:
          profileEightyModelObj ?? this.profileEightyModelObj,
    );
  }
}
