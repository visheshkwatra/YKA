// ignore_for_file: must_be_immutable

part of 'profile_eleven_bloc.dart';

/// Represents the state of ProfileEleven in the application.
class ProfileElevenState extends Equatable {
  ProfileElevenState({this.profileElevenModelObj});

  ProfileElevenModel? profileElevenModelObj;

  @override
  List<Object?> get props => [
        profileElevenModelObj,
      ];
  ProfileElevenState copyWith({ProfileElevenModel? profileElevenModelObj}) {
    return ProfileElevenState(
      profileElevenModelObj:
          profileElevenModelObj ?? this.profileElevenModelObj,
    );
  }
}
