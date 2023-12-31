// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'interiortext_item_model.dart';import 'carnamelist_item_model.dart';/// This class defines the variables used in the [booking_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookingDetailsModel extends Equatable {BookingDetailsModel({this.interiortextItemList = const [], this.carnamelistItemList = const [], }) {  }

List<InteriortextItemModel> interiortextItemList;

List<CarnamelistItemModel> carnamelistItemList;

BookingDetailsModel copyWith({List<InteriortextItemModel>? interiortextItemList, List<CarnamelistItemModel>? carnamelistItemList, }) { return BookingDetailsModel(
interiortextItemList : interiortextItemList ?? this.interiortextItemList,
carnamelistItemList : carnamelistItemList ?? this.carnamelistItemList,
); } 
@override List<Object?> get props => [interiortextItemList,carnamelistItemList];
 }
