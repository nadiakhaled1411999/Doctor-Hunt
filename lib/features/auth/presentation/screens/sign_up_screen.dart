import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/core/constants/app_assets.dart';
import 'package:untitled/core/heplers/spacing.dart';
import 'package:untitled/core/theming/app_colors.dart';
import 'package:untitled/core/theming/app_styles.dart';
import 'package:untitled/core/widgets/app_text_button.dart';
import 'package:untitled/core/widgets/custom_svg_image.dart';
import 'package:untitled/core/widgets/text_form_field.dart';
import 'package:untitled/features/home/presentation/screens/onboarding_screen/color.dart';

class SignUpScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

      Positioned.fill(
      child: Image.asset(
        AppAssets.bglogin,
        fit: BoxFit.cover,
      ),
    ),
    Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

    Text(
    'Welcome back',
    style: AppStyles.getTitleStyle(),
    ),
    verticalSpace(10),

    Text(
    'You can search course, apply course and find\nscholarship for abroad studies',
    textAlign: TextAlign.center,
    style: AppStyles.getDescriptionStyle(),
    ),
    verticalSpace(40),

