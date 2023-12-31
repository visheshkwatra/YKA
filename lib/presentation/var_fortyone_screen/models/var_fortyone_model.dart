// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewhierarchy2_item_model.dart';/// This class defines the variables used in the [var_fortyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VarFortyoneModel extends Equatable {VarFortyoneModel({this.viewhierarchy2ItemList = const []}) {  }

List<Viewhierarchy2ItemModel> viewhierarchy2ItemList;

VarFortyoneModel copyWith({List<Viewhierarchy2ItemModel>? viewhierarchy2ItemList}) { return VarFortyoneModel(
viewhierarchy2ItemList : viewhierarchy2ItemList ?? this.viewhierarchy2ItemList,
); } 
@override List<Object?> get props => [viewhierarchy2ItemList];
 }
