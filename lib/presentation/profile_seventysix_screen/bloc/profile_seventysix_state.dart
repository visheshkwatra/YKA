// ignore_for_file: must_be_immutable

part of 'profile_seventysix_bloc.dart';

/// Represents the state of ProfileSeventysix in the application.
class ProfileSeventysixState extends Equatable {
  ProfileSeventysixState({
    this.checkBox = false,
    this.profileSeventysixModelObj,
  });

  ProfileSeventysixModel? profileSeventysixModelObj;

  bool checkBox;

  @override
  List<Object?> get props => [
        checkBox,
        profileSeventysixModelObj,
      ];
  ProfileSeventysixState copyWith({
    bool? checkBox,
    ProfileSeventysixModel? profileSeventysixModelObj,
  }) {
    return ProfileSeventysixState(
      checkBox: checkBox ?? this.checkBox,
      profileSeventysixModelObj:
          profileSeventysixModelObj ?? this.profileSeventysixModelObj,
    );
  }
}
