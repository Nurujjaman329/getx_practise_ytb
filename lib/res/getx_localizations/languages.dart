
import 'package:get/get_navigation/get_navigation.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String , String>> get keys => {
    'en_US' : {
      'email_hint' : 'Enter Email',
      'internet_exception': " We're Unable to show results\nPlease Check Your Data\nand Connections",
      'general_exception': "We're unable to process your request.\n Please try again"
    },

    'bn_BD' : {
      'email_hint' : 'test'
    }
  };
}