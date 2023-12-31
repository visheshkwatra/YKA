import '../../../core/app_export.dart';/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {Userprofilelist1ItemModel({this.userImage, this.userImage1, this.userStatus, this.id, }) { userImage = userImage  ?? ImageConstant.imgUserGray10006;userImage1 = userImage1  ?? ImageConstant.imgUserTeal700;userStatus = userStatus  ?? "OFF";id = id  ?? ""; }

String? userImage;

String? userImage1;

String? userStatus;

String? id;

 }
