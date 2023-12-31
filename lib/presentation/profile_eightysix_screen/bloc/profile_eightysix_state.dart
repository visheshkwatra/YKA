// ignore_for_file: must_be_immutable

part of 'profile_eightysix_bloc.dart';

/// Represents the state of ProfileEightysix in the application.
class ProfileEightysixState extends Equatable {
  ProfileEightysixState({
    this.searchController,
    this.profileEightysixModelObj,
  });

  TextEditingController? searchController;

  ProfileEightysixModel? profileEightysixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        profileEightysixModelObj,
      ];
  ProfileEightysixState copyWith({
    TextEditingController? searchController,
    ProfileEightysixModel? profileEightysixModelObj,
  }) {
    return ProfileEightysixState(
      searchController: searchController ?? this.searchController,
      profileEightysixModelObj:
          profileEightysixModelObj ?? this.profileEightysixModelObj,
    );
  }
}
