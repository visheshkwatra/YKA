import '../../../core/app_export.dart';/// This class is used in the [bookingstext1_item_widget] screen.
class Bookingstext1ItemModel {Bookingstext1ItemModel({this.bookingsImage, this.bookingsText, this.id, }) { bookingsImage = bookingsImage  ?? ImageConstant.imgList2;bookingsText = bookingsText  ?? "Bookings";id = id  ?? ""; }

String? bookingsImage;

String? bookingsText;

String? id;

 }
