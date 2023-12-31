// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy1_item_model.dart';/// This class defines the variables used in the [var_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VarEightModel extends Equatable {VarEightModel({this.viewhierarchy1ItemList = const []}) {  }

List<Viewhierarchy1ItemModel> viewhierarchy1ItemList;

VarEightModel copyWith({List<Viewhierarchy1ItemModel>? viewhierarchy1ItemList}) { return VarEightModel(
viewhierarchy1ItemList : viewhierarchy1ItemList ?? this.viewhierarchy1ItemList,
); } 
@override List<Object?> get props => [viewhierarchy1ItemList];
 }
