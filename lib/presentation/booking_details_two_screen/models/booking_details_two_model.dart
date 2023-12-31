// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'interiortext4_item_model.dart';import 'carnamelist1_item_model.dart';/// This class defines the variables used in the [booking_details_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingDetailsTwoModel extends Equatable {BookingDetailsTwoModel({this.interiortext4ItemList = const [], this.carnamelist1ItemList = const [], }) {  }

List<Interiortext4ItemModel> interiortext4ItemList;

List<Carnamelist1ItemModel> carnamelist1ItemList;

BookingDetailsTwoModel copyWith({List<Interiortext4ItemModel>? interiortext4ItemList, List<Carnamelist1ItemModel>? carnamelist1ItemList, }) { return BookingDetailsTwoModel(
interiortext4ItemList : interiortext4ItemList ?? this.interiortext4ItemList,
carnamelist1ItemList : carnamelist1ItemList ?? this.carnamelist1ItemList,
); } 
@override List<Object?> get props => [interiortext4ItemList,carnamelist1ItemList];
 }
