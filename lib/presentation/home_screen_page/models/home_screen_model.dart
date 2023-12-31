// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'businesscard1_item_model.dart';/// This class defines the variables used in the [home_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeScreenModel extends Equatable {HomeScreenModel({this.businesscard1ItemList = const []}) {  }

List<Businesscard1ItemModel> businesscard1ItemList;

HomeScreenModel copyWith({List<Businesscard1ItemModel>? businesscard1ItemList}) { return HomeScreenModel(
businesscard1ItemList : businesscard1ItemList ?? this.businesscard1ItemList,
); } 
@override List<Object?> get props => [businesscard1ItemList];
 }
