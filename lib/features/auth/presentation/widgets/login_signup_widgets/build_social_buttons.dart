


 import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class  BuildSocialButtons extends StatelessWidget {
  const  BuildSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialButton(
                              textName: AppStrings.googleText, iconPath: AppAssets.Google),
                          horizontalSpace(12),
                          SocialButton(
                            textName: AppStrings.facebookText,
                            iconPath: AppAssets.facebook,
                          )
                        ],
                      ),
                    );
  }
}