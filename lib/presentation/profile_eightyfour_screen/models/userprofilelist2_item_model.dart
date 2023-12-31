import '../../../core/app_export.dart';/// This class is used in the [userprofilelist2_item_widget] screen.
class Userprofilelist2ItemModel {Userprofilelist2ItemModel({this.homeImage, this.homeText, this.editText, this.deleteText, this.id, }) { homeImage = homeImage  ?? ImageConstant.imgFrameRed800;homeText = homeText  ?? "Home";editText = editText  ?? "Edit";deleteText = deleteText  ?? "Delete";id = id  ?? ""; }

String? homeImage;

String? homeText;

String? editText;

String? deleteText;

String? id;

 }
