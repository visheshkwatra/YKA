import '../../../core/app_export.dart';/// This class is used in the [businesscard_item_widget] screen.
class BusinesscardItemModel {BusinesscardItemModel({this.title, this.rating, this.hours, this.callText, this.id, }) { title = title  ?? "Riyadh Motors";rating = rating  ?? "4.5 Rated";hours = hours  ?? "Open 24 Hours";callText = callText  ?? "Call";id = id  ?? ""; }

String? title;

String? rating;

String? hours;

String? callText;

String? id;

 }
