mixin PngAssets {
  static const String pngAssets = "assets/images/";
}

mixin SvgAssets {
  static const String svgAssets = "assets/svg/";
}

mixin VideoAssets {
  static const String videoAssets = "assets/videos/";
}

class AppAssets with PngAssets, SvgAssets, VideoAssets {
  // Image PNG
//   static const String adsImage = "${PngAssets.pngAssets}ads.png";
static const String doctor1="${PngAssets.pngAssets}doctor1.png";
static const String doctor2="${PngAssets.pngAssets}doctor2.png";
static const String doctor3="${PngAssets.pngAssets}doctor3.png";
static const String backOnBoarding="${PngAssets.pngAssets}backOnBoarding.png";
static const String backOnBoarding2="${PngAssets.pngAssets}backOnBoarding2.png";
static const String bg="${PngAssets.pngAssets}bg.png";
static const String bglogin="${PngAssets.pngAssets}bglogin.png";
  // Icons SVG
//   static const String carSolidIcon = "${SvgAssets.svgAssets}car_solid.svg";
  static const String Google="${SvgAssets.svgAssets}Google.svg";
  static const String facebook="${SvgAssets.svgAssets}facebook.svg";
static const String emailIcon="${SvgAssets.svgAssets}emailIcon.svg";
  static const String passwordIcon="${SvgAssets.svgAssets}passwordIcon.svg";
  // Video Assets
//   static const String testOnBoardingVideo =
//       "${VideoAssets.videoAssets}test.mp4";
}
