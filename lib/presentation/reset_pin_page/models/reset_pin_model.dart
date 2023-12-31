// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'businesscard_item_model.dart';/// This class defines the variables used in the [reset_pin_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ResetPinModel extends Equatable {ResetPinModel({this.businesscardItemList = const []}) {  }

List<BusinesscardItemModel> businesscardItemList;

ResetPinModel copyWith({List<BusinesscardItemModel>? businesscardItemList}) { return ResetPinModel(
businesscardItemList : businesscardItemList ?? this.businesscardItemList,
); } 
@override List<Object?> get props => [businesscardItemList];
 }
