// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'yearcomponent1_item_model.dart';/// This class defines the variables used in the [my_vehicle_details_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class MyVehicleDetailsOneModel extends Equatable {MyVehicleDetailsOneModel({this.yearcomponent1ItemList = const []}) {  }

List<Yearcomponent1ItemModel> yearcomponent1ItemList;

MyVehicleDetailsOneModel copyWith({List<Yearcomponent1ItemModel>? yearcomponent1ItemList}) { return MyVehicleDetailsOneModel(
yearcomponent1ItemList : yearcomponent1ItemList ?? this.yearcomponent1ItemList,
); } 
@override List<Object?> get props => [yearcomponent1ItemList];
 }
