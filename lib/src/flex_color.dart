import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'flex_color_scheme.dart';
import 'flex_extensions.dart';

/// Enum used to access predefined [FlexSchemeData] definitions that
/// can be used by [FlexColorScheme].
enum FlexScheme {
  /// The example theme used in the Material design guide.
  /// Light version:
  /// https://material.io/design/color/the-color-system.html#color-usage-and-palettes
  /// Dark version:
  /// https://material.io/design/color/dark-theme.html#ui-application
  material,

  /// New high contrast theme. Same as Flutter [ColorScheme.highContrastLight]
  /// and [ColorScheme.highContrastDark].
  materialHc,

  /// Material blue and Material light blue based theme.
  blue,

  /// Material indigo and Material deep purple based theme.
  indigo,

  /// Hippie blue with surfie green and chock pink.
  hippieBlue,

  /// Aqua tropical blue ocean theme.
  aquaBlue,

  /// Blue theme composed of well known blue brand colors.
  brandBlue,

  /// Deep blue dark abyss theme.
  deepBlue,

  /// Pink sakura cherry blossom inspired theme.
  sakura,

  /// Mandy red color and viking blue inspired theme.
  mandyRed,

  /// Material red and Material pink theme.
  red,

  /// Red wine inspired theme.
  redWine,

  /// Purple brown, aubergine and eggplant inspired theme.
  purpleBrown,

  /// Material green forest and Material teal based theme.
  green,

  /// Green money theme, a "show me the money theme".
  money,

  /// Lush green jungle inspired theme.
  jungle,

  /// Somber Material blue-grey and legal purple and grey theme.
  greyLaw,

  /// Wild willow and wasabi green with orchid purple inspired theme.
  wasabi,

  /// Golden sunset inspired theme.
  gold,

  /// Playful mango mojito theme.
  mango,

  /// Placeholder for adding a custom configured scheme. When this theme
  /// is selected you should provide a [FlexColorScheme] based on a custom
  /// [FlexSchemeData] object. If not provided, it defaults to the
  /// [FlexScheme.material] theme.
  custom,
}

/// Defines colors, names and color schemes used to make maps and a list or
/// predefined [FlexSchemeData] objects that can be used by [FlexColorScheme].
class FlexColor {
  FlexColor._();

  /// Material standard color for light surface.
  static const Color materialLightSurface = Colors.white;

  /// Material standard color for light background.
  static const Color materialLightBackground = Colors.white;

  /// Material standard color for light scaffold background.
  static const Color materialLightScaffoldBackground = Colors.white;

  /// Material standard color for dark surface.
  static const Color materialDarkSurface = Color(0xFF121212);

  /// Material standard color for dark background.
  static const Color materialDarkBackground = Color(0xFF121212);

  /// Material standard color for dark scaffold background.
  static const Color materialDarkScaffoldBackground = Color(0xFF121212);

  // Custom static constants for surface, background, scaffold and background
  // colors. Some surface colors are slightly modified from the Material
  // standards and different constants are used so we can tweak them if so
  // desired without touching the material standard surface values.

  /// FlexColors standard for light surface, same as material.
  static const Color lightSurface = Colors.white;

  /// FlexColors standard for light background. A very light grey,
  /// lighter than grey50, used for better blend effect when
  /// blending in primary color with the surface color.
  static const Color lightBackground = Color(0xFFFDFDFD);

  /// FlexColors standard for light scaffold background, just white as Material.
  static const Color lightScaffoldBackground = Colors.white;

  /// Both dark surface and background are slightly darker than Material
  /// variants so we can blend in more primary color without getting too
  /// light too soon.
  static const Color darkSurface = Color(0xFF111111);

  /// FlexColors standard for dark background, slightly darker than Material
  /// default and a tad darker than FlexColors dark surface color too.
  static const Color darkBackground = Color(0xFF101010);

  /// FlexColors standard for dark scaffold background, same as Material.
  static const Color darkScaffoldBackground = Color(0xFF121212);

  // The Material standard error colors for light and dark modes as defined by
  // https://material.io/design/color/the-color-system.html#color-theme-creation.
  // As they were July 11 2020.

  /// Material standard light error color.
  static const Color materialLightError = Color(0xFFB00020);

  /// Material standard dark error color.
  static const Color materialDarkError = Color(0xFFCF6679);

  // High contrast Material standard error color as per those used in Flutter
  // ColorScheme.highContrastLight and ColorScheme.highContrastDark
  /// Material standard high contrast light error color.
  static const Color materialLightErrorHc = Color(0xff790000);

  /// Material standard high contrast dark error color.
  static const Color materialDarkErrorHc = Color(0xff9b374d);

  // The primary and variant Material theme colors as defined by:
  // https://material.io/design/color/the-color-system.html#color-theme-creation.
  //
  /// English name of the standard material theme.
  static const String materialName = 'Material default';

  /// English description of the standard material theme.
  static const String materialDescription =
      'Default Material color theme, used in the design guide.';

  /// Material standard default color for light primary color.
  static const Color materialLightPrimary = Color(0xff6200ee);

  /// Material standard default color for light primary variant color.
  static const Color materialLightPrimaryVariant = Color(0xff3700b3);

  /// Material standard default color for light secondary color.
  static const Color materialLightSecondary = Color(0xff03dac6);

  /// Material standard default color for light secondary variant color.
  static const Color materialLightSecondaryVariant = Color(0xff018786);

  /// Material standard default color for dark primary color.
  static const Color materialDarkPrimary = Color(0xffbb86fc);

  /// Material standard default color for dark primary variant color.
  static const Color materialDarkPrimaryVariant = Color(0xff3700B3);

  /// Material standard default color for dark secondary color, the
  /// color value is same as the light secondary color.
  static const Color materialDarkSecondary = Color(0xff03dac6);

  /// Material standard default color for dark secondary variant color, the
  /// color value is same as the light secondary color.
  static const Color materialDarkSecondaryVariant = Color(0xff03dac6);

  // High contrast versions of Material Guide colors as per those used
  // in ColorScheme.highContrastLight and ColorScheme.highContrastDark.
  //
  /// English name of the material high contrast theme.
  static const String materialHcName = 'Material high contrast';

  /// English description of the material high contrast theme.
  static const String materialHcDescription = 'High contrast Material '
      'design guide theme.';

  /// Material high contrast color for light primary color.
  static const Color materialLightPrimaryHc = Color(0xff0000ba);

  /// Material high contrast color for light primary variant color.
  static const Color materialLightPrimaryVariantHc = Color(0xff000088);

  /// Material high contrast color for light secondary color.
  static const Color materialLightSecondaryHc = Color(0xff66fff9);

  /// Material high contrast color for light secondary variant color.
  static const Color materialLightSecondaryVariantHc = Color(0xff018786);

  /// Material high contrast color for dark primary color.
  static const Color materialDarkPrimaryHc = Color(0xffefb7ff);

  /// Material high contrast color for dark primary variant color.
  static const Color materialDarkPrimaryVariantHc = Color(0xffbe9eff);

  /// Material high contrast color for dark secondary color.
  static const Color materialDarkSecondaryHc = Color(0xff66fff9);

  /// Material high contrast color for dark secondary variant color.
  static const Color materialDarkSecondaryVariantHc = Color(0xff66fff9);

  // Material blue and light blue palette.
  //
  /// English name of the blue theme.
  static const String blueName = 'Blue delight';

  /// English description of the blue theme.
  static const String blueDescription = 'Blue color theme, based on '
      'Material blue and light blue colors.';

  /// Blue theme color for light primary color.
  static const Color blueLightPrimary = Color(0xFF1565C0); // blue800

  /// Blue theme color for light primary variant color.
  static const Color blueLightPrimaryVariant = Color(0xFF0D47A1); // blue900

  /// Blue theme color for light secondary color.
  static const Color blueLightSecondary = Color(0xFF039BE5); // lightBlue600

  /// Blue theme color for light secondary variant color.
  static const Color blueLightSecondaryVariant = Color(0xFF0277BD); // lBlue800

  /// Blue theme color for dark primary color.
  static const Color blueDarkPrimary = Color(0xFF90CAF9); // blue200

  /// Blue theme color for dark primary variant color.
  static const Color blueDarkPrimaryVariant = Color(0xFF64B5F6); // blue300

  /// Blue theme color for dark secondary color.
  static const Color blueDarkSecondary = Color(0xFF81D4FA); // lightBlue200

  /// Blue theme color for dark secondary variant color.
  static const Color blueDarkSecondaryVariant = Color(0xFFE1F5FE); // lBlue50

  // Material indigo and purple palette
  //
  /// English name of the indigo theme.
  static const String indigoName = 'Indigo nights';

  /// English description of the indigo theme.
  static const String indigoDescription = 'Indigo color theme, based on '
      'Material indigo and deep purple colors.';

  /// Indigo theme color for light primary color.
  static const Color indigoLightPrimary = Color(0xFF303F9F); // indigo700

  /// Indigo theme color for light primary variant color.
  static const Color indigoLightPrimaryVariant = Color(0xFF1A237E); // indigo900

  /// Indigo theme color for light secondary color.
  static const Color indigoLightSecondary = Color(0xFF512DA8); // deepPurple700

  /// Indigo theme color for light secondary variant color.
  static const Color indigoLightSecondaryVariant = Color(0xFF311B92); //dPurp900

  /// Indigo theme color for dark primary color.
  static const Color indigoDarkPrimary = Color(0xFF7986CB); // indigo300

  /// Indigo theme color for dark primary variant color.
  static const Color indigoDarkPrimaryVariant = Color(0xFF5C6BC0); // indigo400

  /// Indigo theme color for dark secondary color.
  static const Color indigoDarkSecondary = Color(0xFF9575CD); // deepPurple300

  /// Indigo theme color for dark secondary variant color.
  static const Color indigoDarkSecondaryVariant = Color(0xFF7E57C2); // dPurp400

  // Hippie blue colors.
  // Found some of them here:
  // https://www.designwizard.com/blog/design-trends/colour-combination
  //
  /// English name of the hippie blue theme.
  static const String hippieBlueName = 'Hippie blue';

  /// English description of the hippie blue theme.
  static const String hippieBlueDescription = 'Hippie blue with surfie green '
      'and chock coral pink theme.';

  /// Hippie blue theme color for light primary color.
  static const Color hippieBlueLightPrimary = Color(0xFF4C9BBA);

  /// Hippie blue theme color for light primary variant color.
  static const Color hippieBlueLightPrimaryVariant = Color(0xFF078282);

  /// Hippie blue theme color for light secondary color.
  static const Color hippieBlueLightSecondary = Color(0xFFFF4F58);

  /// Hippie blue theme color for light secondary variant color.
  static const Color hippieBlueLightSecondaryVariant = Color(0xFFBF4A50);

  /// Hippie blue theme color for dark primary color.
  static const Color hippieBlueDarkPrimary = Color(0xFF669DB3);

  /// Hippie blue theme color for dark primary variant color.
  static const Color hippieBlueDarkPrimaryVariant = Color(0xFF208E8E);

  /// Hippie blue theme color for dark secondary color.
  static const Color hippieBlueDarkSecondary = Color(0xFFFC6E75);

  /// Hippie blue theme color for dark secondary variant color.
  static const Color hippieBlueDarkSecondaryVariant = Color(0xFFF75F67);

  // Aqua tropical blue ocean palette.
  //
  /// English name of the aqua blue theme.
  static const String aquaBlueName = 'Aqua blue';

  /// English description of the aqua blue theme.
  static const String aquaBlueDescription = 'Aqua tropical ocean blue theme.';

  /// Aqua blue theme color for light primary color.
  static const Color aquaBlueLightPrimary = Color(0xFF35A0CB);

  /// Aqua blue theme color for light primary variant color.
  static const Color aquaBlueLightPrimaryVariant = Color(0xFF45B4D2);

  /// Aqua blue theme color for light secondary color.
  static const Color aquaBlueLightSecondary = Color(0xFF89D1C8);

  /// Aqua blue theme color for light secondary variant color.
  static const Color aquaBlueLightSecondaryVariant = Color(0xFF61D4D4);

  /// Aqua blue theme color for dark primary color.
  static const Color aquaBlueDarkPrimary = Color(0xFF5DB3D5);

  /// Aqua blue theme color for dark primary variant color.
  static const Color aquaBlueDarkPrimaryVariant = Color(0xFF71D3ED);

  /// Aqua blue theme color for dark secondary color.
  static const Color aquaBlueDarkSecondary = Color(0xFFA1E9DF);

  /// Aqua blue theme color for dark secondary variant color.
  static const Color aquaBlueDarkSecondaryVariant = Color(0xFFA0E5E5);

  // Blue color scheme based on blue brand colors.
  //
  /// English name of the brand blue colors theme.
  static const String brandBlueName = 'Brand blues';

  /// English description of the brand blue colors theme.
  static const String brandBlueDescription = 'Blue colors used in well known '
      'brand themes.';

  /// Brand blues theme color for light primary color.
  static const Color brandBlueLightPrimary = Color(0xFF3B5998); // FB blue

  /// Brand blues theme color for light primary variant color.
  static const Color brandBlueLightPrimaryVariant = Color(0xFF3F729B); // IG

  /// Brand blues theme color for light secondary color.
  static const Color brandBlueLightSecondary = Color(0xFF55ACEE); // Twitter

  /// Brand blues theme color for light secondary variant color.
  static const Color brandBlueLightSecondaryVariant = Color(0xFF4285F4); // G

  /// Brand blues theme color for dark primary color.
  static const Color brandBlueDarkPrimary = Color(0xFF8B9DC3); // FB 2nd

  /// Brand blues theme color for dark primary variant color.
  static const Color brandBlueDarkPrimaryVariant = Color(0xFF799CB9);

  /// Brand blues theme color for dark secondary color.
  static const Color brandBlueDarkSecondary = Color(0xFFA0D1F5);

  /// Brand blues theme color for dark secondary variant color.
  static const Color brandBlueDarkSecondaryVariant = Color(0xFF88B2F8);

  // Deep blue sea palette
  //
  /// English name of the dark deep blue sea theme.
  static const String deepBlueName = 'Deep blue sea';

  /// English description of the dark deep blue sea theme.
  static const String deepBlueDescription = 'Dark deep blue sea color theme.';

  /// Deep blue theme color for light primary color.
  static const Color deepBlueLightPrimary = Color(0xFF223A5E);

  /// Deep blue theme color for light primary variant color.
  static const Color deepBlueLightPrimaryVariant = Color(0xFF1B2E4B);

  /// Deep blue theme color for light secondary color.
  static const Color deepBlueLightSecondary = Color(0xFF144955);

  /// Deep blue theme color for light secondary variant color.
  static const Color deepBlueLightSecondaryVariant = Color(0xFF208399);

  /// Deep blue theme color for dark primary color.
  static const Color deepBlueDarkPrimary = Color(0xFF748BAC);

  /// Deep blue theme color for dark primary variant color.
  static const Color deepBlueDarkPrimaryVariant = Color(0xFF7FA1D0);

  /// Deep blue theme color for dark secondary color.
  static const Color deepBlueDarkSecondary = Color(0xFF539EAF);

  /// Deep blue theme color for dark secondary variant color.
  static const Color deepBlueDarkSecondaryVariant = Color(0xFF219AB5);

  // Custom Pink Sakura palette
  // Color sources: https://www.w3schools.com/colors/colors_2019.asp
  //
  /// English name of the pink sakura inspired theme.
  static const String sakuraName = 'Pink sakura';

  /// English description of the pink sakura inspired theme.
  static const String sakuraDescription = 'Pink color theme, based on sakura '
      'cherry blossom like colors.';

  /// Sakura theme color for light primary color.
  static const Color sakuraLightPrimary = Color(0xFFCE5B78); // Fruit dove

  /// Sakura theme color for light primary variant color.
  static const Color sakuraLightPrimaryVariant = Color(0xffe4446c);

  /// Sakura theme color for light secondary color.
  static const Color sakuraLightSecondary = Color(0xFFfbae9d); // Peach pink 80%

  /// Sakura theme color for light secondary variant color.
  static const Color sakuraLightSecondaryVariant = Color(0xFFF39682); //Peach

  /// Sakura theme color for dark primary color.
  static const Color sakuraDarkPrimary = Color(0xFFeec4d8); // Peach pink 80%

  /// Sakura theme color for dark primary variant color.
  static const Color sakuraDarkPrimaryVariant = Color(0xFFe8b5ce); //SweetLilac

  /// Sakura theme color for dark secondary color.
  static const Color sakuraDarkSecondary = Color(0xFFF5D6C6); // Peche

  /// Sakura theme color for dark secondary variant color.
  static const Color sakuraDarkSecondaryVariant = Color(0xFFf7e0d4); // Peche90%

  // Custom Mandy Red and Viking blue colors.
  //
  /// English name of the Mandy Red inspired theme.
  static const String mandyRedName = 'Oh Mandy red';

  /// English description of the pink mandyRed inspired theme.
  static const String mandyRedDescription =
      'Mandy red and Viking blue inspired red theme.';

  /// Mandy red theme color for light primary color.
  static const Color mandyRedLightPrimary = Color(0xFFCD5758);

  /// Mandy red theme color for light primary variant color.
  static const Color mandyRedLightPrimaryVariant = Color(0xFFA23556);

  /// Mandy red theme color for light secondary color.
  static const Color mandyRedLightSecondary = Color(0xFF57C8D3);

  /// Mandy red theme color for light secondary variant color.
  static const Color mandyRedLightSecondaryVariant = Color(0xFF69B9CD);

  /// Mandy red theme color for dark primary color.
  static const Color mandyRedDarkPrimary = Color(0xFFDA8585);

  /// Mandy red theme color for dark primary variant color.
  static const Color mandyRedDarkPrimaryVariant = Color(0xFFAB4967);

  /// Mandy red theme color for dark secondary color.
  static const Color mandyRedDarkSecondary = Color(0xFF68CDD7);

  /// Mandy red theme color for dark secondary variant color.
  static const Color mandyRedDarkSecondaryVariant = Color(0xFF85C6D6);

  // Material red and pink palette
  //
  /// English name of the red theme.
  static const String redName = 'Red tornado';

  /// English description of the red theme.
  static const String redDescription = 'Red color theme, based on '
      'Material red and pink colors';

  /// Red theme color for light primary color.
  static const Color redLightPrimary = Color(0xFFC62828); // red800

  /// Red theme color for light primary variant color.
  static const Color redLightPrimaryVariant = Color(0xFFB71C1C); // red900

  /// Red theme color for light secondary color.
  static const Color redLightSecondary = Color(0xFFAD1457); // pink800

  /// Red theme color for light secondary variant color.
  static const Color redLightSecondaryVariant = Color(0xFF880E4F); // pink900

  /// Red theme color for dark primary color.
  static const Color redDarkPrimary = Color(0xFFEF9A9A); // red200

  /// Red theme color for dark primary variant color.
  static const Color redDarkPrimaryVariant = Color(0xFFE57373); // red300

  /// Red theme color for dark secondary color.
  static const Color redDarkSecondary = Color(0xFFF48FB1); // pink200

  /// Red theme color for dark secondary variant color.
  static const Color redDarkSecondaryVariant = Color(0xFFF06292); // pink300

  // Custom red wine palette
  // Color sources: https://www.w3schools.com/colors/colors_2019.asp
  // The names that the name that color lib gives these colors are
  // often wine related.
  //
  /// English name of the red wine theme.
  static const String redWineName = 'Red red wine';

  /// English description of the red wine theme.
  static const String redWineDescription = 'Red color theme, based on '
      'red wine like colors.';

  /// Red wine theme color for light primary color.
  static const Color redWineLightPrimary = Color(0xFF9B1B30);

  /// Red wine theme color for light primary variant color.
  static const Color redWineLightPrimaryVariant = Color(0xFF6C1322);

  /// Red wine theme color for light secondary color.
  static const Color redWineLightSecondary = Color(0xFFA70043);

  /// Red wine theme color for light secondary variant color.
  static const Color redWineLightSecondaryVariant = Color(0xFFA4121C);

  /// Red wine theme color for dark primary color.
  static const Color redWineDarkPrimary = Color(0xFFE4677C); //0xFFe4677c

  /// Red wine theme color for dark primary variant color.
  static const Color redWineDarkPrimaryVariant = Color(0xFFB25867);

  /// Red wine theme color for dark secondary color.
  static const Color redWineDarkSecondary = Color(0xFFC87A98); // 0xFFc8374d

  /// Red wine theme color for dark secondary variant color.
  static const Color redWineDarkSecondaryVariant = Color(0xFFBD545B); // B.L 45%

  // Custom purple brown theme.
  // Color sources: https://visme.co/blog/website-color-schemes/
  // Scheme 8 on the above link.
  //
  /// English name of the purple brown theme.
  static const String purpleBrownName = 'Purple brown';

  /// English description of the purple brown theme.
  static const String purpleBrownDescription = 'Purple brown tinted aubergine '
      'and eggplant colored theme.';

  /// Purple brown theme color for light primary color.
  static const Color purpleBrownLightPrimary = Color(0xFF450A0F);

  /// Purple brown theme color for light primary variant color.
  static const Color purpleBrownLightPrimaryVariant = Color(0xFF682A2C);

  /// Purple brown theme color for light secondary color.
  static const Color purpleBrownLightSecondary = Color(0xFF60234F);

  /// Purple brown theme color for light secondary variant color.
  static const Color purpleBrownLightSecondaryVariant = Color(0xFF4A0635);

  /// Purple brown theme color for dark primary color.
  static const Color purpleBrownDarkPrimary = Color(0xFFA98085);

  /// Purple brown theme color for dark primary variant color.
  static const Color purpleBrownDarkPrimaryVariant = Color(0xFF73494A);

  /// Purple brown theme color for dark secondary color.
  static const Color purpleBrownDarkSecondary = Color(0xFF975384);

  /// Purple brown theme color for dark secondary variant color.
  static const Color purpleBrownDarkSecondaryVariant = Color(0xFF5F4C5A);

  // Material green and cyan palette
  //
  /// English name of the green theme.
  static const String greenName = 'Green forest';

  /// English description of the green theme.
  static const String greenDescription = 'Green color theme, based on '
      'Material green and cyan colors.';

  /// Green theme color for light primary color.
  static const Color greenLightPrimary = Color(0xFF2E7D32); // green800

  /// Green theme color for light primary variant color.
  static const Color greenLightPrimaryVariant = Color(0xFF1B5E20); // green900

  /// Green theme color for light secondary color.
  static const Color greenLightSecondary = Color(0xFF00695C); // cyan800

  /// Green theme color for light secondary variant color.
  static const Color greenLightSecondaryVariant = Color(0xFF004D40); // cyan900

  /// Green theme color for dark primary color.
  static const Color greenDarkPrimary = Color(0xFFA5D6A7); // green200

  /// Green theme color for dark primary variant color.
  static const Color greenDarkPrimaryVariant = Color(0xFF81C784); // green300

  /// Green theme color for dark secondary color.
  static const Color greenDarkSecondary = Color(0xFF80CBC4); // cyan200

  /// Green theme color for dark secondary variant color.
  static const Color greenDarkSecondaryVariant = Color(0xFF4DB6AC); // cyan300

  // Custom Eden palette
  // Color sources: https://www.w3schools.com/colors/colors_2019.asp
  // Looks like colors suitable for finance app, so I named it money
  //
  /// English name of the green money theme.
  static const String moneyName = 'Green money';

  /// English description of the green money theme.
  static const String moneyDescription = 'Green money and finance style '
      'color theme.';

  /// Money green theme color for light primary color.
  static const Color moneyLightPrimary = Color(0xFF264E36); // Eden 23%

  /// Money green theme color for light primary variant color.
  static const Color moneyLightPrimaryVariant = Color(0xFF224430); // Eden 20%

  /// Money green theme color for light secondary color.
  static const Color moneyLightSecondary = Color(0xFF797b3a); // Guacamole 35%

  /// Money green theme color for light secondary variant color.
  static const Color moneyLightSecondaryVariant = Color(0xFF555729); // Gua. 25%

  /// Money green theme color for dark primary color.
  static const Color moneyDarkPrimary = Color(0xFF7AB893);

  /// Money green theme color for dark primary variant color.
  static const Color moneyDarkPrimaryVariant = Color(0xFF6AAF85);

  /// Money green theme color for dark secondary color.
  static const Color moneyDarkSecondary = Color(0xFFd5d6a8); // Guacamole 75%

  /// Money green theme color for dark secondary variant color.
  static const Color moneyDarkSecondaryVariant = Color(0xFFbbbe74); //Gua. 60%

  // Custom jungle green palette
  // Looks like colors suitable for finance app, so I named it jungle
  //
  /// English name of the lush green jungle theme.
  static const String jungleName = 'Green jungle';

  /// English description of the lush green jungle theme.
  static const String jungleDescription = 'Green jungle and rain forest '
      'color theme.';

  /// Jungle green theme color for light primary color.
  static const Color jungleLightPrimary = Color(0xFF004E15);

  /// Jungle green theme color for light primary variant color.
  static const Color jungleLightPrimaryVariant = Color(0xFF00411F);

  /// Jungle green theme color for light secondary color.
  static const Color jungleLightSecondary = Color(0xFF007256);

  /// Jungle green theme color for light secondary variant color.
  static const Color jungleLightSecondaryVariant = Color(0xFF295300);

  /// Jungle green theme color for dark primary color.
  static const Color jungleDarkPrimary = Color(0xFF519E67);

  /// Jungle green theme color for dark primary variant color.
  static const Color jungleDarkPrimaryVariant = Color(0xFF3F9368);

  /// Jungle green theme color for dark secondary color.
  static const Color jungleDarkSecondary = Color(0xFF479985);

  /// Jungle green theme color for dark secondary variant color.
  static const Color jungleDarkSecondaryVariant = Color(0xFF73A497);

  // Custom Legal palette
  // Looks like colors suitable for a law firm, so I named it legal grey

  /// English name of the grey law theme.
  static const String greyLawName = 'Grey law';

  /// English description of the grey law theme.
  static const String greyLawDescription = 'Material blue grey and ultra dark '
      'purple color theme, law firm style.';

  /// Grey law theme color for light primary color.
  static const Color greyLawLightPrimary = Color(0xFF37474F); // BlueGrey800

  /// Grey law theme color for light primary variant color.
  static const Color greyLawLightPrimaryVariant = Color(0xFF455A64); //BlueGr700

  /// Grey law theme color for light secondary color.
  static const Color greyLawLightSecondary = Color(0xFF521D82);

  /// Grey law theme color for light secondary variant color.
  static const Color greyLawLightSecondaryVariant = Color(0xFF2C314F);

  /// Grey law theme color for dark primary color.
  static const Color greyLawDarkPrimary = Color(0xFF90A4AE); //BlueGrey300

  /// Grey law theme color for dark primary variant color.
  static const Color greyLawDarkPrimaryVariant = Color(0xFF78909C); //BlueGr400

  /// Grey law theme color for dark secondary color.
  static const Color greyLawDarkSecondary = Color(0xFF815AA3);

  /// Grey law theme color for dark secondary variant color.
  static const Color greyLawDarkSecondaryVariant = Color(0xFF373D5C);

  // Wild willow and wasabi greenish and purple orchid inspired theme.
  //
  /// English name of the green Wild Willow and wasabi theme.
  static const String wasabiName = 'Willow and wasabi';

  /// English description of the Wild Willow and wasabi green theme.
  static const String wasabiDescription = 'Wild Willow and wasabi green '
      'with orchid purple inspired colors.';

  /// Willow and wasabi green theme color for light primary color.
  static const Color wasabiLightPrimary = Color(0xFF738625);

  /// Willow and wasabi green theme color for light primary variant color.
  static const Color wasabiLightPrimaryVariant = Color(0xFF586621);

  /// Wild Willow and wasabi green theme color for light secondary color.
  static const Color wasabiLightSecondary = Color(0xFF893789);

  /// Willow and wasabi green theme color for light secondary variant color.
  static const Color wasabiLightSecondaryVariant = Color(0xFF5E3974);

  /// Willow and wasabi green theme color for dark primary color.
  static const Color wasabiDarkPrimary = Color(0xFFC3CB77);

  /// Willow and wasabi green theme color for dark primary variant color.
  static const Color wasabiDarkPrimaryVariant = Color(0xFFD7DFB2);

  /// Willow and wasabi green theme color for dark secondary color.
  static const Color wasabiDarkSecondary = Color(0xFFDF9ADF);

  /// Willow and wasabi green theme color for dark secondary variant color.
  static const Color wasabiDarkSecondaryVariant = Color(0xFFA664CD);

  // Custom golden orange palette
  // Color sources: https://www.w3schools.com/colors/colors_2019.asp
  //
  /// English name of the gold sunset theme.
  static const String goldName = 'Gold sunset';

  /// English description of the gold sunset theme.
  static const String goldDescription = 'Gold sunset color theme, based on '
      'orange like colors.';

  /// Gold sunset theme color for light primary color.
  static const Color goldLightPrimary = Color(0xFFb86914); // Dark cheddar 40%

  /// Gold sunset theme color for light primary variant color.
  static const Color goldLightPrimaryVariant = Color(0xFFcf7617); // D.ched 45%

  /// Gold sunset theme color for light secondary color.
  static const Color goldLightSecondary = Color(0xFFEF6C00); // Orange800

  /// Gold sunset theme color for light secondary variant color.
  static const Color goldLightSecondaryVariant = Color(0xFFb36832); // S.alm 45%

  /// Gold sunset theme color for dark primary color.
  static const Color goldDarkPrimary = Color(0xFFeda85e); // Dark cheddar L 65%

  /// Gold sunset theme color for dark primary variant color.
  static const Color goldDarkPrimaryVariant = Color(0xFFf2c18c); // D.ched.L 65%

  /// Gold sunset theme color for dark secondary color.
  static const Color goldDarkSecondary = Color(0xFFd28f60); // S.almond L 60%

  /// Gold sunset theme color for dark secondary variant color.
  static const Color goldDarkSecondaryVariant = Color(0xFFddab88); // S.alm.L70%

  // Custom mango mojito palette
  // Color sources: https://www.w3schools.com/colors/colors_2019.asp
  //
  /// English name of the mango mojito theme.
  static const String mangoName = 'Mango mojito';

  /// English description of the mango mojito theme.
  static const String mangoDescription = 'Orange and green Mango mojito '
      'color theme.';

  /// Mango mojito theme color for light primary color.
  static const Color mangoLightPrimary = Color(0xFFC78D20);

  /// Mango mojito theme color for light primary variant color.
  static const Color mangoLightPrimaryVariant = Color(0xFFD2691E);

  /// Mango mojito theme color for light secondary color.
  static const Color mangoLightSecondary = Color(0xFF8D9440);

  /// Mango mojito theme color for light secondary variant color.
  static const Color mangoLightSecondaryVariant = Color(0xFF616247);

  /// Mango mojito theme color for dark primary color.
  static const Color mangoDarkPrimary = Color(0xFFDEB059);

  /// Mango mojito theme color for dark primary variant color.
  static const Color mangoDarkPrimaryVariant = Color(0xFFDB874B);

  /// Mango mojito theme color for dark secondary color.
  static const Color mangoDarkSecondary = Color(0xFFAFB479);

  /// Mango mojito theme color for dark secondary variant color.
  static const Color mangoDarkSecondaryVariant = Color(0xFF81816C);

  /// English name of the custom theme.
  static const String customName = 'Custom';

  /// English description of the custom theme.
  static const String customDescription = 'Define your own custom theme by '
      'selecting color scheme and surface colors.';

  /// A [FlexScheme] enum to [FlexSchemeData] constant map that contains a
  /// number of pre-made ready to go nice dark and light [FlexSchemeColor]
  /// colors schemes that can be used e.g. by [FlexColorScheme], but also
  /// by [ColorScheme]. The [FlexColor.schemes] also contain the standard
  /// default material design themes, both the normal and the newer high
  /// contrast version.
  ///
  /// Each of these predefined color schemes include matching hand tuned light
  /// and dark mode theme colors for the theme it defines.
  ///
  /// There is no need to use these predefined themes, you can make your own
  /// as well. This can be used as an example on how to define your own
  /// [FlexSchemeData] schemes that you can use instead.
  ///
  /// This map excludes the last enum [FlexScheme.custom], it can thus not be
  /// directly iterated over using the [FlexScheme] enum values list.
  /// For a version that contains all the enum values, including the last
  /// [FlexScheme.custom] value, use the [schemesWithCustom] map instead.
  static const Map<FlexScheme, FlexSchemeData> schemes =
      <FlexScheme, FlexSchemeData>{
    FlexScheme.material: FlexSchemeData(
      name: materialName,
      description: materialDescription,
      light: FlexSchemeColor(
        primary: materialLightPrimary,
        primaryVariant: materialLightPrimaryVariant,
        secondary: materialLightSecondary,
        secondaryVariant: materialLightSecondaryVariant,
        appBarColor: materialLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: materialDarkPrimary,
        primaryVariant: materialDarkPrimaryVariant,
        secondary: materialDarkSecondary,
        secondaryVariant: materialDarkSecondaryVariant,
        appBarColor: materialDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.materialHc: FlexSchemeData(
      name: materialHcName,
      description: materialHcDescription,
      light: FlexSchemeColor(
        primary: materialLightPrimaryHc,
        primaryVariant: materialLightPrimaryVariantHc,
        secondary: materialLightSecondaryHc,
        secondaryVariant: materialLightSecondaryVariantHc,
        appBarColor: materialLightSecondaryVariantHc,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: materialDarkPrimaryHc,
        primaryVariant: materialDarkPrimaryVariantHc,
        secondary: materialDarkSecondaryHc,
        secondaryVariant: materialDarkSecondaryVariantHc,
        appBarColor: materialDarkSecondaryVariantHc,
        error: materialDarkErrorHc,
      ),
    ),
    FlexScheme.blue: FlexSchemeData(
      name: blueName,
      description: blueDescription,
      light: FlexSchemeColor(
        primary: blueLightPrimary,
        primaryVariant: blueLightPrimaryVariant,
        secondary: blueLightSecondary,
        secondaryVariant: blueLightSecondaryVariant,
        appBarColor: blueLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: blueDarkPrimary,
        primaryVariant: blueDarkPrimaryVariant,
        secondary: blueDarkSecondary,
        secondaryVariant: blueDarkSecondaryVariant,
        appBarColor: blueDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.indigo: FlexSchemeData(
      name: indigoName,
      description: indigoDescription,
      light: FlexSchemeColor(
        primary: indigoLightPrimary,
        primaryVariant: indigoLightPrimaryVariant,
        secondary: indigoLightSecondary,
        secondaryVariant: indigoLightSecondaryVariant,
        appBarColor: indigoLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: indigoDarkPrimary,
        primaryVariant: indigoDarkPrimaryVariant,
        secondary: indigoDarkSecondary,
        secondaryVariant: indigoDarkSecondaryVariant,
        appBarColor: indigoDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.hippieBlue: FlexSchemeData(
      name: hippieBlueName,
      description: hippieBlueDescription,
      light: FlexSchemeColor(
        primary: hippieBlueLightPrimary,
        primaryVariant: hippieBlueLightPrimaryVariant,
        secondary: hippieBlueLightSecondary,
        secondaryVariant: hippieBlueLightSecondaryVariant,
        appBarColor: hippieBlueLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: hippieBlueDarkPrimary,
        primaryVariant: hippieBlueDarkPrimaryVariant,
        secondary: hippieBlueDarkSecondary,
        secondaryVariant: hippieBlueDarkSecondaryVariant,
        appBarColor: hippieBlueDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.aquaBlue: FlexSchemeData(
      name: aquaBlueName,
      description: aquaBlueDescription,
      light: FlexSchemeColor(
        primary: aquaBlueLightPrimary,
        primaryVariant: aquaBlueLightPrimaryVariant,
        secondary: aquaBlueLightSecondary,
        secondaryVariant: aquaBlueLightSecondaryVariant,
        appBarColor: aquaBlueLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: aquaBlueDarkPrimary,
        primaryVariant: aquaBlueDarkPrimaryVariant,
        secondary: aquaBlueDarkSecondary,
        secondaryVariant: aquaBlueDarkSecondaryVariant,
        appBarColor: aquaBlueDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.brandBlue: FlexSchemeData(
      name: brandBlueName,
      description: brandBlueDescription,
      light: FlexSchemeColor(
        primary: brandBlueLightPrimary,
        primaryVariant: brandBlueLightPrimaryVariant,
        secondary: brandBlueLightSecondary,
        secondaryVariant: brandBlueLightSecondaryVariant,
        appBarColor: brandBlueLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: brandBlueDarkPrimary,
        primaryVariant: brandBlueDarkPrimaryVariant,
        secondary: brandBlueDarkSecondary,
        secondaryVariant: brandBlueDarkSecondaryVariant,
        appBarColor: brandBlueDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.deepBlue: FlexSchemeData(
      name: deepBlueName,
      description: deepBlueDescription,
      light: FlexSchemeColor(
        primary: deepBlueLightPrimary,
        primaryVariant: deepBlueLightPrimaryVariant,
        secondary: deepBlueLightSecondary,
        secondaryVariant: deepBlueLightSecondaryVariant,
        appBarColor: deepBlueLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: deepBlueDarkPrimary,
        primaryVariant: deepBlueDarkPrimaryVariant,
        secondary: deepBlueDarkSecondary,
        secondaryVariant: deepBlueDarkSecondaryVariant,
        appBarColor: deepBlueDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.sakura: FlexSchemeData(
      name: sakuraName,
      description: sakuraDescription,
      light: FlexSchemeColor(
        primary: sakuraLightPrimary,
        primaryVariant: sakuraLightPrimaryVariant,
        secondary: sakuraLightSecondary,
        secondaryVariant: sakuraLightSecondaryVariant,
        appBarColor: sakuraLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: sakuraDarkPrimary,
        primaryVariant: sakuraDarkPrimaryVariant,
        secondary: sakuraDarkSecondary,
        secondaryVariant: sakuraDarkSecondaryVariant,
        appBarColor: sakuraDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.mandyRed: FlexSchemeData(
      name: mandyRedName,
      description: mandyRedDescription,
      light: FlexSchemeColor(
        primary: mandyRedLightPrimary,
        primaryVariant: mandyRedLightPrimaryVariant,
        secondary: mandyRedLightSecondary,
        secondaryVariant: mandyRedLightSecondaryVariant,
        appBarColor: mandyRedLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: mandyRedDarkPrimary,
        primaryVariant: mandyRedDarkPrimaryVariant,
        secondary: mandyRedDarkSecondary,
        secondaryVariant: mandyRedDarkSecondaryVariant,
        appBarColor: mandyRedDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.red: FlexSchemeData(
      name: redName,
      description: redDescription,
      light: FlexSchemeColor(
        primary: redLightPrimary,
        primaryVariant: redLightPrimaryVariant,
        secondary: redLightSecondary,
        secondaryVariant: redLightSecondaryVariant,
        appBarColor: redLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: redDarkPrimary,
        primaryVariant: redDarkPrimaryVariant,
        secondary: redDarkSecondary,
        secondaryVariant: redDarkSecondaryVariant,
        appBarColor: redDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.redWine: FlexSchemeData(
      name: redWineName,
      description: redWineDescription,
      light: FlexSchemeColor(
        primary: redWineLightPrimary,
        primaryVariant: redWineLightPrimaryVariant,
        secondary: redWineLightSecondary,
        secondaryVariant: redWineLightSecondaryVariant,
        appBarColor: redWineLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: redWineDarkPrimary,
        primaryVariant: redWineDarkPrimaryVariant,
        secondary: redWineDarkSecondary,
        secondaryVariant: redWineDarkSecondaryVariant,
        appBarColor: redWineDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.purpleBrown: FlexSchemeData(
      name: purpleBrownName,
      description: purpleBrownDescription,
      light: FlexSchemeColor(
        primary: purpleBrownLightPrimary,
        primaryVariant: purpleBrownLightPrimaryVariant,
        secondary: purpleBrownLightSecondary,
        secondaryVariant: purpleBrownLightSecondaryVariant,
        appBarColor: purpleBrownLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: purpleBrownDarkPrimary,
        primaryVariant: purpleBrownDarkPrimaryVariant,
        secondary: purpleBrownDarkSecondary,
        secondaryVariant: purpleBrownDarkSecondaryVariant,
        appBarColor: purpleBrownDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.green: FlexSchemeData(
      name: greenName,
      description: greenDescription,
      light: FlexSchemeColor(
        primary: greenLightPrimary,
        primaryVariant: greenLightPrimaryVariant,
        secondary: greenLightSecondary,
        secondaryVariant: greenLightSecondaryVariant,
        appBarColor: greenLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: greenDarkPrimary,
        primaryVariant: greenDarkPrimaryVariant,
        secondary: greenDarkSecondary,
        secondaryVariant: greenDarkSecondaryVariant,
        appBarColor: greenDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.money: FlexSchemeData(
      name: moneyName,
      description: moneyDescription,
      light: FlexSchemeColor(
        primary: moneyLightPrimary,
        primaryVariant: moneyLightPrimaryVariant,
        secondary: moneyLightSecondary,
        secondaryVariant: moneyLightSecondaryVariant,
        appBarColor: moneyLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: moneyDarkPrimary,
        primaryVariant: moneyDarkPrimaryVariant,
        secondary: moneyDarkSecondary,
        secondaryVariant: moneyDarkSecondaryVariant,
        appBarColor: moneyDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.jungle: FlexSchemeData(
      name: jungleName,
      description: jungleDescription,
      light: FlexSchemeColor(
        primary: jungleLightPrimary,
        primaryVariant: jungleLightPrimaryVariant,
        secondary: jungleLightSecondary,
        secondaryVariant: jungleLightSecondaryVariant,
        appBarColor: jungleLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: jungleDarkPrimary,
        primaryVariant: jungleDarkPrimaryVariant,
        secondary: jungleDarkSecondary,
        secondaryVariant: jungleDarkSecondaryVariant,
        appBarColor: jungleDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.greyLaw: FlexSchemeData(
      name: greyLawName,
      description: greyLawDescription,
      light: FlexSchemeColor(
        primary: greyLawLightPrimary,
        primaryVariant: greyLawLightPrimaryVariant,
        secondary: greyLawLightSecondary,
        secondaryVariant: greyLawLightSecondaryVariant,
        appBarColor: greyLawLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: greyLawDarkPrimary,
        primaryVariant: greyLawDarkPrimaryVariant,
        secondary: greyLawDarkSecondary,
        secondaryVariant: greyLawDarkSecondaryVariant,
        appBarColor: greyLawDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.wasabi: FlexSchemeData(
      name: wasabiName,
      description: wasabiDescription,
      light: FlexSchemeColor(
        primary: wasabiLightPrimary,
        primaryVariant: wasabiLightPrimaryVariant,
        secondary: wasabiLightSecondary,
        secondaryVariant: wasabiLightSecondaryVariant,
        appBarColor: wasabiLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: wasabiDarkPrimary,
        primaryVariant: wasabiDarkPrimaryVariant,
        secondary: wasabiDarkSecondary,
        secondaryVariant: wasabiDarkSecondaryVariant,
        appBarColor: wasabiDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.gold: FlexSchemeData(
      name: goldName,
      description: goldDescription,
      light: FlexSchemeColor(
        primary: goldLightPrimary,
        primaryVariant: goldLightPrimaryVariant,
        secondary: goldLightSecondary,
        secondaryVariant: goldLightSecondaryVariant,
        appBarColor: goldLightSecondaryVariant,
        error: materialLightErrorHc,
      ),
      dark: FlexSchemeColor(
        primary: goldDarkPrimary,
        primaryVariant: goldDarkPrimaryVariant,
        secondary: goldDarkSecondary,
        secondaryVariant: goldDarkSecondaryVariant,
        appBarColor: goldDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
    FlexScheme.mango: FlexSchemeData(
      name: mangoName,
      description: mangoDescription,
      light: FlexSchemeColor(
        primary: mangoLightPrimary,
        primaryVariant: mangoLightPrimaryVariant,
        secondary: mangoLightSecondary,
        secondaryVariant: mangoLightSecondaryVariant,
        appBarColor: mangoLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: mangoDarkPrimary,
        primaryVariant: mangoDarkPrimaryVariant,
        secondary: mangoDarkSecondary,
        secondaryVariant: mangoDarkSecondaryVariant,
        appBarColor: mangoDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
  };

  /// Returns a [FlexScheme] enum to [FlexSchemeData] constant map that contains
  /// all the pre-made ready to use dark and light [FlexSchemeColor]
  /// color values that can be used e.g. by [FlexColorScheme], but also
  /// by [ColorScheme]. The [FlexColor.schemesWithCustom] also contain the
  /// standard default material design themes, both the normal and the
  /// newer high contrast version.
  ///
  /// There is no need to use these predefined themes, you can make your own
  /// as well. These can be used as an example on how to define your own
  /// Flex themes that you can use in an app to allow users to select totally
  /// different pre-made nice themes, no just dark and light.
  ///
  /// Each pre-made custom theme include hand tuned light and dark modes colors
  /// for the theme it defines.
  static const Map<FlexScheme, FlexSchemeData> schemesWithCustom =
      <FlexScheme, FlexSchemeData>{
    ...schemes,
    // This custom color set has same colors as the material default theme.
    // It is up to the implementation to provide custom colors or provide
    // other customization solution for this choice. Often an implementation
    // might allow users to copy a pre-made theme's colors as a starting point
    // to this enum theme choice and allow customizations of its colors with a
    // color picker.
    FlexScheme.custom: FlexSchemeData(
      name: customName,
      description: customDescription,
      light: FlexSchemeColor(
        primary: materialLightPrimary,
        primaryVariant: materialLightPrimaryVariant,
        secondary: materialLightSecondary,
        secondaryVariant: materialLightSecondaryVariant,
        appBarColor: materialLightSecondaryVariant,
        error: materialLightError,
      ),
      dark: FlexSchemeColor(
        primary: materialDarkPrimary,
        primaryVariant: materialDarkPrimaryVariant,
        secondary: materialDarkSecondary,
        secondaryVariant: materialDarkSecondaryVariant,
        appBarColor: materialDarkSecondaryVariant,
        error: materialDarkError,
      ),
    ),
  };

  /// Return a list with all the predefined [FlexSchemeData] objects.
  static List<FlexSchemeData> schemesList = <FlexSchemeData>[
    ...FlexColor.schemes.values
  ];
}

/// Immutable data class that holds [name] and [description] string scheme
/// descriptions, plus [light] and [dark] [FlexSchemeColor] definitions that
/// is used by [FlexColorScheme] to create a theme.
///
/// This class can also be used to make a map with [FlexScheme] enum or some
/// other usable lookup value as key, and [FlexSchemeData] as values, that you
/// can then use as input to define multiple theme options for [FlexColorScheme]
/// based themes. A predefined example of a [FlexScheme] and [FlexSchemeData]
/// map is available in [FlexColor.schemes] and [FlexColor.schemesWithCustom].
@immutable
class FlexSchemeData with Diagnosticable {
  /// Default constructor.
  const FlexSchemeData({
    @required this.name,
    @required this.description,
    @required this.light,
    @required this.dark,
  })  : assert(name != null, 'Name may not be null.'),
        assert(description != null, 'Description may not be null.'),
        assert(light != null, 'Light may not be null.'),
        assert(dark != null, 'Dark may not be null.');

  /// A short name for the [FlexSchemeData] based color scheme.
  final String name;

  /// A longer description of the [FlexSchemeData] based color scheme.
  final String description;

  /// The light scheme colors used by this [FlexSchemeData].
  final FlexSchemeColor light;

  /// The dark scheme colors used by this [FlexSchemeData].
  final FlexSchemeColor dark;

  /// Copy the object with one or more provided properties changed.
  FlexSchemeData copyWith({
    String name,
    String description,
    FlexSchemeColor light,
    FlexSchemeColor dark,
  }) {
    return FlexSchemeData(
      name: name ?? this.name,
      description: description ?? this.description,
      light: light ?? this.light,
      dark: dark ?? this.dark,
    );
  }

  @override
  int get hashCode {
    return hashValues(
      name,
      description,
      light,
      dark,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is FlexSchemeData &&
        other.name == name &&
        other.description == description &&
        other.light == light &&
        other.dark == dark;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('description', description));
    properties.add(DiagnosticsProperty<FlexSchemeColor>('light', light));
    properties.add(DiagnosticsProperty<FlexSchemeColor>('dark', dark));
  }
}

/// Immutable data class for the main colors used in a [FlexColorScheme] based
/// color scheme.
///
/// The default constructor requires all parameters. To make a [FlexSchemeColor]
/// from a minimum of just the primary color, use the factory
/// [FlexSchemeColor.from] which only requires the primary color to make
/// a complete color set, but can use the other values as optional values.
@immutable
class FlexSchemeColor with Diagnosticable {
  /// Default constructor. Consider using the [FlexSchemeColor.from] factory
  /// constructor for more flexibility and less required values based on
  /// using computed defaults for missing, but required values.
  const FlexSchemeColor({
    @required this.primary,
    @required this.primaryVariant,
    @required this.secondary,
    @required this.secondaryVariant,
    // App bar color and error colors are not required, if they are null
    // they will be provided by theme constructor defaults later.
    this.appBarColor,
    this.error,
  })  : assert(primary != null, 'Primary color may not be null.'),
        assert(
            primaryVariant != null, 'Primary variant color may not be null.'),
        assert(secondary != null, 'Secondary color may not be null.'),
        assert(secondaryVariant != null,
            'Secondary variant color may not be null.');

  /// Make a [FlexSchemeColor] from just one primary color or possible also
  /// from a more complete color scheme set. This is a convenience factory that
  /// can create a nice toned color scheme based on just the primary color.
  factory FlexSchemeColor.from({
    @required Color primary,
    Color primaryVariant,
    Color secondary,
    Color secondaryVariant,
    Color appBarColor,
    Color error,
  }) {
    // Check valid primary input
    assert(primary != null, 'Primary color may not be null.');
    // If null slips through in a release build, give it a fallback color.
    primary ??= FlexColor.materialLightPrimary;

    return FlexSchemeColor(
      primary: primary,
      // ignore: avoid_redundant_argument_values
      primaryVariant: primaryVariant ?? primary.darken(kDarkenPrimaryVariant),
      secondary: secondary ?? primary.darken(kDarkenSecondary),
      secondaryVariant: secondaryVariant ??
          // ignore: avoid_redundant_argument_values
          secondary?.darken(kDarkenSecondaryVariantFromSecondary) ??
          primary.darken(kDarkenSecondaryVariant),
      appBarColor: appBarColor ??
          // ignore: avoid_redundant_argument_values
          secondary?.darken(kDarkenSecondaryVariantFromSecondary) ??
          primary.darken(kDarkenSecondaryVariant),
      error: error,
    );
  }

  /// The color displayed most frequently across your application's screens
  /// and components.
  final Color primary;

  /// Typically a darker version of the primary color.
  final Color primaryVariant;

  /// An accent color that, when used sparingly, calls attention to parts
  /// of your app.
  final Color secondary;

  /// Typically a darker version of the secondary color.
  final Color secondaryVariant;

  /// The color of the app bar.
  ///
  /// In light mode an app bar's theme color will in standard Material themes
  /// default to primary color and to surface color in dark mode.
  /// [FlexSchemeColor] allows you to define a color for the app bar theme
  /// that differs from this default.
  final Color appBarColor;

  /// The color to use for input validation errors, e.g. for
  /// [InputDecoration.errorText].
  final Color error;

  /// Copy the object with one or more provided properties changed.
  FlexSchemeColor copyWith({
    Color primary,
    Color primaryVariant,
    Color secondary,
    Color secondaryVariant,
    Color appBarColor,
    Color error,
  }) {
    return FlexSchemeColor(
      primary: primary ?? this.primary,
      primaryVariant: primaryVariant ?? this.primaryVariant,
      secondary: secondary ?? this.secondary,
      secondaryVariant: secondaryVariant ?? this.secondaryVariant,
      appBarColor: appBarColor ?? this.appBarColor,
      error: error ?? this.error,
    );
  }

  @override
  int get hashCode {
    return hashValues(
      primary,
      primaryVariant,
      secondary,
      secondaryVariant,
      appBarColor,
      error,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is FlexSchemeColor &&
        other.primary == primary &&
        other.primaryVariant == primaryVariant &&
        other.secondary == secondary &&
        other.secondaryVariant == secondaryVariant &&
        other.appBarColor == appBarColor &&
        other.error == error;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('primary', primary));
    properties.add(ColorProperty('primaryVariant', primaryVariant));
    properties.add(ColorProperty('secondary', secondary));
    properties.add(ColorProperty('secondaryVariant', secondaryVariant));
    properties.add(ColorProperty('appBarColor', appBarColor));
    properties.add(ColorProperty('error', error));
  }
}