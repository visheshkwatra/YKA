// ignore_for_file: must_be_immutable

part of 'my_favourties_details_bloc.dart';

/// Represents the state of MyFavourtiesDetails in the application.
class MyFavourtiesDetailsState extends Equatable {
  MyFavourtiesDetailsState({this.myFavourtiesDetailsModelObj});

  MyFavourtiesDetailsModel? myFavourtiesDetailsModelObj;

  @override
  List<Object?> get props => [
        myFavourtiesDetailsModelObj,
      ];
  MyFavourtiesDetailsState copyWith(
      {MyFavourtiesDetailsModel? myFavourtiesDetailsModelObj}) {
    return MyFavourtiesDetailsState(
      myFavourtiesDetailsModelObj:
          myFavourtiesDetailsModelObj ?? this.myFavourtiesDetailsModelObj,
    );
  }
}
