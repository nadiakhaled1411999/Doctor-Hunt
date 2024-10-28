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
  static const String doctor1 = "${PngAssets.pngAssets}doctor1.png";
  static const String doctor2 = "${PngAssets.pngAssets}doctor2.png";
  static const String doctor3 = "${PngAssets.pngAssets}doctor3.png";
  static const String backOnBoarding ="${PngAssets.pngAssets}backOnBoarding.png";

  static const String backOnBoarding2 = "${PngAssets.pngAssets}backOnBoarding2.png";

  static const String bg = "${PngAssets.pngAssets}bg.png";
  static const String bglogin = "${PngAssets.pngAssets}bglogin.png";
  static const String homeImage = "${PngAssets.pngAssets}homeImage.png";
  static const String popularDoctor1 ="${PngAssets.pngAssets}popularDoctor1.png";
  static const String popularDoctor2="${PngAssets.pngAssets}popularDoctor2.png";
  static const String popularDoctor3="${PngAssets.pngAssets}popularDoctor3.png";
  static const String featureDoctor1="${PngAssets.pngAssets}featureDoctor1.png";
  static const String featureDoctor2 ="${PngAssets.pngAssets}featureDoctor2.png";
  static const String featureDoctor3="${PngAssets.pngAssets}featureDoctor3.png";



  // Icons SVG
//   static const String carSolidIcon = "${SvgAssets.svgAssets}car_solid.svg";
  static const String Google = "${SvgAssets.svgAssets}Google.svg";
  static const String facebook = "${SvgAssets.svgAssets}facebook.svg";
  static const String emailIcon = "${SvgAssets.svgAssets}emailIcon.svg";
  static const String passwordIcon = "${SvgAssets.svgAssets}passwordIcon.svg";
  static const String toothIcon = "${SvgAssets.svgAssets}toothIcon.svg";
  static const String heartIcon = "${SvgAssets.svgAssets}heartIcon.svg";
  static const String eyeIcon = "${SvgAssets.svgAssets}eyeIcon.svg";
  static const String bodyIcon = "${SvgAssets.svgAssets}bodyIcon.svg";
  static const String starAmber = "${SvgAssets.svgAssets}starAmber.svg";
  static const String star = "${SvgAssets.svgAssets}star.svg";
  static const String heart = "${SvgAssets.svgAssets}heart.svg";
  static const String heartred = "${SvgAssets.svgAssets}heartred.svg";
  static const String homeIcon = "${SvgAssets.svgAssets}homeIcon.svg";
  static const String favoritesIcon= "${SvgAssets.svgAssets}favoritesIcon.svg";
  static const String readingIcon = "${SvgAssets.svgAssets}readingIcon.svg";
  static const String messagesIcon = "${SvgAssets.svgAssets}messagesIcon.svg";



// Video Assets
//   static const String testOnBoardingVideo =
//       "${VideoAssets.videoAssets}test.mp4";
}
