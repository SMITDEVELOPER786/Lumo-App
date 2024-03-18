import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.userImage1,
    this.empireBaby,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgEllipse12);
    userImage1 = userImage1 ?? Rx(ImageConstant.imgCheckcircle);
    empireBaby = empireBaby ?? Rx("Empire Baby");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? userImage1;

  Rx<String>? empireBaby;

  Rx<String>? id;
}
