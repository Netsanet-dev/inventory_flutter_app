import 'package:image_picker/image_picker.dart';
import 'package:inventory_flutter_app/utils/helper/logger_utils.dart';

class ImagePickerHelper {
  static const _logContext = 'ImagePickerHelper';

  static Future<String?> pickImageFromGallery() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        return pickedFile.path;
      }
      return null;
    } catch (e, s) {
      LoggerUtil.logError(
        _logContext,
        'Failed to pick image from gallery',
        e,
        s,
      );
      return null;
    }
  }

  static Future<String?> pickImageFromCamera() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        return pickedFile.path;
      }
      return null;
    } catch (e, s) {
      LoggerUtil.logError(
        _logContext,
        'Failed to pick image from camera',
        e,
        s,
      );
      return null;
    }
  }
}
