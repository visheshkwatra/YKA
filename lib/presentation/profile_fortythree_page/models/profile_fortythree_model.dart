// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bookingstext_item_model.dart';/// This class defines the variables used in the [profile_fortythree_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileFortythreeModel extends Equatable {ProfileFortythreeModel({this.bookingstextItemList = const []}) {  }

List<BookingstextItemModel> bookingstextItemList;

ProfileFortythreeModel copyWith({List<BookingstextItemModel>? bookingstextItemList}) { return ProfileFortythreeModel(
bookingstextItemList : bookingstextItemList ?? this.bookingstextItemList,
); } 
@override List<Object?> get props => [bookingstextItemList];
 }
