import '../../../core/app_export.dart';/// This class is used in the [profilefortynine_item_widget] screen.
class ProfilefortynineItemModel {ProfilefortynineItemModel({this.reservedOnDate, this.carModel, this.carBrand, this.carImage, this.reservationAmount, this.id, }) { reservedOnDate = reservedOnDate  ?? "Reserved on 12th Oct 2023";carModel = carModel  ?? "Mustang Coupe";carBrand = carBrand  ?? "FORD";carImage = carImage  ?? ImageConstant.imgImage5273121x291;reservationAmount = reservationAmount  ?? "Reserved @ BHD 500";id = id  ?? ""; }

String? reservedOnDate;

String? carModel;

String? carBrand;

String? carImage;

String? reservationAmount;

String? id;

 }
