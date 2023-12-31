// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'yearcomponent_item_model.dart';/// This class defines the variables used in the [my_vehicle_details_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class MyVehicleDetailsModel extends Equatable {MyVehicleDetailsModel({this.yearcomponentItemList = const []}) {  }

List<YearcomponentItemModel> yearcomponentItemList;

MyVehicleDetailsModel copyWith({List<YearcomponentItemModel>? yearcomponentItemList}) { return MyVehicleDetailsModel(
yearcomponentItemList : yearcomponentItemList ?? this.yearcomponentItemList,
); } 
@override List<Object?> get props => [yearcomponentItemList];
 }
