import 'package:dscan/config/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:image_picker/image_picker.dart';

final imageRiverpod = StateNotifierProvider((ref) => ImageRiverpod());

class ImageRiverpod extends StateNotifier<XFile?> {
  ImageRiverpod() : super(null);

  final picker = ImagePicker();

  Future pickImageGallery() async {
    final result = await picker.pickImage(source: ImageSource.gallery);
    state = result;
    ConfigGeneral.logger.d(state?.path);
  }

  Future pickImageCamera() async {
    final result = await picker.pickImage(source: ImageSource.camera);
    state = result;
  }
}
