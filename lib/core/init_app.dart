import 'package:template_app/core/init_translation.dart';
import 'package:get_storage/get_storage.dart';

Future initApp() async {
  await GetStorage.init();
  await initTranslation();
}
