class FontFamilyHelper {

  static const String poppinsEnglishFont = "Poppins"; 
  
  static const String cairoArabicFont = "Cairo"; 

  static String geoLocalizedFontFamily(){
    //TODO: SharedPreferences
    String currentLang = "en";

    if (currentLang == "en") {
      return poppinsEnglishFont;
    }else{
      return cairoArabicFont;
    }
  }
}