// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget3_item_widget] screen.
class Widget3ItemModel extends Equatable {Widget3ItemModel({this.widget, this.isSelected, }) { widget = widget  ?? "Home";isSelected = isSelected  ?? false; }

String? widget;

bool? isSelected;

Widget3ItemModel copyWith({String? widget, bool? isSelected, }) { return Widget3ItemModel(
widget : widget ?? this.widget,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [widget,isSelected];
 }
