import '../../../core/app_export.dart';/// This class is used in the [businesscard1_item_widget] screen.
class Businesscard1ItemModel {Businesscard1ItemModel({this.title, this.rating, this.hours, this.callButton, this.id, }) { title = title  ?? "Riyadh Motors";rating = rating  ?? "4.5 Rated";hours = hours  ?? "Open 24 Hours";callButton = callButton  ?? "Call";id = id  ?? ""; }

String? title;

String? rating;

String? hours;

String? callButton;

String? id;

 }
