// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'carselectorgrid_item_model.dart';import 'bhdchipview_item_model.dart';import 'petrol_item_model.dart';/// This class defines the variables used in the [explore_tesla_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreTeslaOneModel extends Equatable {ExploreTeslaOneModel({this.carselectorgridItemList = const [], this.bhdchipviewItemList = const [], this.petrolItemList = const [], }) {  }

List<CarselectorgridItemModel> carselectorgridItemList;

List<BhdchipviewItemModel> bhdchipviewItemList;

List<PetrolItemModel> petrolItemList;

ExploreTeslaOneModel copyWith({List<CarselectorgridItemModel>? carselectorgridItemList, List<BhdchipviewItemModel>? bhdchipviewItemList, List<PetrolItemModel>? petrolItemList, }) { return ExploreTeslaOneModel(
carselectorgridItemList : carselectorgridItemList ?? this.carselectorgridItemList,
bhdchipviewItemList : bhdchipviewItemList ?? this.bhdchipviewItemList,
petrolItemList : petrolItemList ?? this.petrolItemList,
); } 
@override List<Object?> get props => [carselectorgridItemList,bhdchipviewItemList,petrolItemList];
 }
