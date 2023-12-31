// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [petrol_item_widget] screen.
class PetrolItemModel extends Equatable {PetrolItemModel({this.petrol, this.isSelected, }) { petrol = petrol  ?? "Petrol";isSelected = isSelected  ?? false; }

String? petrol;

bool? isSelected;

PetrolItemModel copyWith({String? petrol, bool? isSelected, }) { return PetrolItemModel(
petrol : petrol ?? this.petrol,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [petrol,isSelected];
 }
