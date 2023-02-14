import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_Us': {
          'hello': 'Hello',
        },
        'hi_In': {'hello': 'नमस्ते'},
        'fr_Fr': {'hello': 'Bonjour'},
      };
}
