import 'package:mo_7_store/core/services/pref_Keys.dart';
import 'package:mo_7_store/core/services/shared_pref.dart';

class FontFamilyHelper {

  static const String poppinsEnglishFont = "Poppins"; 
  
  static const String cairoArabicFont = "Cairo"; 

  static String geoLocalizedFontFamily(){
    
    final currentLang = SharedPref().getString(PrefKeys.currentLangCode);

    if (currentLang == "en") {
      return poppinsEnglishFont;
    }else{
      return cairoArabicFont;
    }
  }
}