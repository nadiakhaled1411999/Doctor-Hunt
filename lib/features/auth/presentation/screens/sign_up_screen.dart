import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Stack(
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
                        'Join us to start searching',
                        style: AppStyles.getTitleStyle(),
                      ),
                      verticalSpace(10),
                      Text(
                        'You can search course, apply course and find\nscholarship for abroad studies',
                        textAlign: TextAlign.center,
                        style: AppStyles.getDescriptionStyle(),
                      ),
                      verticalSpace(40),
                      Padding(
                        padding: EdgeInsets.only(top: 40.h),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SochialButton(
                                  textName: 'Google', iconPath: AppAssets.Google),
                              horizontalSpace(12),
                              SochialButton(
                                textName: 'facebook',
                                iconPath: AppAssets.facebook,
                              )
                            ],
                          ),
                        ),
                      ),
                      verticalSpace(40),
                      SignupTextFormFiled(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 6.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.check_circle_outline,
                                color: AppColors.descriptionColor),
                            horizontalSpace(2),
                            Text(
                              'I agree with the Terms of Service & Privacy Policy',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Rubik',
                                  color: AppColors.descriptionColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: 'Sign up',
                        textStyle: AppStyles.getTextButtonStyle(),
                        buttonWidth: 290,
                        buttonHeight: 54,
                        onPressed: () {},
                      ),
                      verticalSpace(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Routes.LoginScreen);
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(color:AppColors. primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}