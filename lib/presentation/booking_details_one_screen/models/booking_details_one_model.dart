// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'interiortext1_item_model.dart';import 'cardetailslist_item_model.dart';/// This class defines the variables used in the [booking_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingDetailsOneModel extends Equatable {BookingDetailsOneModel({this.interiortext1ItemList = const [], this.cardetailslistItemList = const [], }) {  }

List<Interiortext1ItemModel> interiortext1ItemList;

List<CardetailslistItemModel> cardetailslistItemList;

BookingDetailsOneModel copyWith({List<Interiortext1ItemModel>? interiortext1ItemList, List<CardetailslistItemModel>? cardetailslistItemList, }) { return BookingDetailsOneModel(
interiortext1ItemList : interiortext1ItemList ?? this.interiortext1ItemList,
cardetailslistItemList : cardetailslistItemList ?? this.cardetailslistItemList,
); } 
@override List<Object?> get props => [interiortext1ItemList,cardetailslistItemList];
 }
