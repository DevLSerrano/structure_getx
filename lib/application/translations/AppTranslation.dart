import 'en_US/en_us_translation.dart';
import 'pt_PT/pt_pt_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_PT': pt_PT,
    'en_US': en_US,
  };
}
