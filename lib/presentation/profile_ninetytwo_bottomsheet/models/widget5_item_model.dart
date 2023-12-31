// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget5_item_widget] screen.
class Widget5ItemModel extends Equatable {Widget5ItemModel({this.widget, this.isSelected, }) { widget = widget  ?? "Home";isSelected = isSelected  ?? false; }

String? widget;

bool? isSelected;

Widget5ItemModel copyWith({String? widget, bool? isSelected, }) { return Widget5ItemModel(
widget : widget ?? this.widget,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [widget,isSelected];
 }
