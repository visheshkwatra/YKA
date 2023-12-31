// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'interiortext3_item_model.dart';import 'cardetailslist3_item_model.dart';/// This class defines the variables used in the [my_favourties_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyFavourtiesDetailsOneModel extends Equatable {MyFavourtiesDetailsOneModel({this.interiortext3ItemList = const [], this.cardetailslist3ItemList = const [], }) {  }

List<Interiortext3ItemModel> interiortext3ItemList;

List<Cardetailslist3ItemModel> cardetailslist3ItemList;

MyFavourtiesDetailsOneModel copyWith({List<Interiortext3ItemModel>? interiortext3ItemList, List<Cardetailslist3ItemModel>? cardetailslist3ItemList, }) { return MyFavourtiesDetailsOneModel(
interiortext3ItemList : interiortext3ItemList ?? this.interiortext3ItemList,
cardetailslist3ItemList : cardetailslist3ItemList ?? this.cardetailslist3ItemList,
); } 
@override List<Object?> get props => [interiortext3ItemList,cardetailslist3ItemList];
 }
