import 'dart:developer';

import 'package:get/get.dart';
import 'package:template_app/translate/en_translation.dart';
import 'package:template_app/translate/vi_translation.dart';

initTranslation() async {
  Get.appendTranslations(ViTranslation().keys);
  Get.appendTranslations(EnTranslation().keys);
}
