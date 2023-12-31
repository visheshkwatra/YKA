// ignore_for_file: must_be_immutable

part of 'explore_tesla_one_bloc.dart';

/// Represents the state of ExploreTeslaOne in the application.
class ExploreTeslaOneState extends Equatable {
  ExploreTeslaOneState({this.exploreTeslaOneModelObj});

  ExploreTeslaOneModel? exploreTeslaOneModelObj;

  @override
  List<Object?> get props => [
        exploreTeslaOneModelObj,
      ];
  ExploreTeslaOneState copyWith(
      {ExploreTeslaOneModel? exploreTeslaOneModelObj}) {
    return ExploreTeslaOneState(
      exploreTeslaOneModelObj:
          exploreTeslaOneModelObj ?? this.exploreTeslaOneModelObj,
    );
  }
}
