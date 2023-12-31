import '../../../core/app_export.dart';/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {Userprofile4ItemModel({this.ford, this.carImage, this.reservationDate, this.carModel, this.reservationAmount, this.id, }) { ford = ford  ?? "FORD";carImage = carImage  ?? ImageConstant.imgImage5273108x291;reservationDate = reservationDate  ?? "Reserved on 12th Oct 2023";carModel = carModel  ?? "Mustang Coupe";reservationAmount = reservationAmount  ?? "Reserved @ BHD 500";id = id  ?? ""; }

String? ford;

String? carImage;

String? reservationDate;

String? carModel;

String? reservationAmount;

String? id;

 }
