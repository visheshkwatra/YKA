// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'interiortext2_item_model.dart';import 'cardetailslist1_item_model.dart';/// This class defines the variables used in the [my_favourties_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyFavourtiesDetailsModel extends Equatable {MyFavourtiesDetailsModel({this.interiortext2ItemList = const [], this.cardetailslist1ItemList = const [], }) {  }

List<Interiortext2ItemModel> interiortext2ItemList;

List<Cardetailslist1ItemModel> cardetailslist1ItemList;

MyFavourtiesDetailsModel copyWith({List<Interiortext2ItemModel>? interiortext2ItemList, List<Cardetailslist1ItemModel>? cardetailslist1ItemList, }) { return MyFavourtiesDetailsModel(
interiortext2ItemList : interiortext2ItemList ?? this.interiortext2ItemList,
cardetailslist1ItemList : cardetailslist1ItemList ?? this.cardetailslist1ItemList,
); } 
@override List<Object?> get props => [interiortext2ItemList,cardetailslist1ItemList];
 }
