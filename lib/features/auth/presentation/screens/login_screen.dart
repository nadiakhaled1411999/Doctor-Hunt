import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';




class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    Padding(
                      padding: EdgeInsets.only(top: 40.h),
                      child: Row(
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
                    verticalSpace(40),
                    LoginTextFormField(),
                    verticalSpace(30),
                    AppTextButton(
                      buttonText: 'login',
                      textStyle: AppStyles.getTextButtonStyle(),
                      buttonWidth: 290,
                      buttonHeight: 54,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.HomeScreen);
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot password',
                        style: TextStyle(color:AppColors. primaryColor),
                      ),
                    ),
                    verticalSpace(45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color:  AppColors.primaryColor),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.SignUpScreen);

                          },
                          child: Text(
                            'Join us',
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
    );
  }
}
