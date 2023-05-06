import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraController extends GetxController {
  // var selectedImagePath = Rx<File?>(null);
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;
  Future getImage(ImageSource imageSource) async {
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: imageSource);
    if (image != null) {
      // selectedImagePath.value = File(image.path);
      selectedImagePath.value = image.path;
    } else {
      Get.snackbar("Error", "No Selected Image",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
