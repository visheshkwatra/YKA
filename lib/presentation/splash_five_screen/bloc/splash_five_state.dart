// ignore_for_file: must_be_immutable

part of 'splash_five_bloc.dart';

/// Represents the state of SplashFive in the application.
class SplashFiveState extends Equatable {
  SplashFiveState({this.splashFiveModelObj});

  SplashFiveModel? splashFiveModelObj;

  @override
  List<Object?> get props => [
        splashFiveModelObj,
      ];
  SplashFiveState copyWith({SplashFiveModel? splashFiveModelObj}) {
    return SplashFiveState(
      splashFiveModelObj: splashFiveModelObj ?? this.splashFiveModelObj,
    );
  }
}
