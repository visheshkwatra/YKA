// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [bhdchipview_item_widget] screen.
class BhdchipviewItemModel extends Equatable {BhdchipviewItemModel({this.kBHD, this.isSelected, }) { kBHD = kBHD  ?? "< 3k BHD";isSelected = isSelected  ?? false; }

String? kBHD;

bool? isSelected;

BhdchipviewItemModel copyWith({String? kBHD, bool? isSelected, }) { return BhdchipviewItemModel(
kBHD : kBHD ?? this.kBHD,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [kBHD,isSelected];
 }
