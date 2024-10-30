 
import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
class  SignupDescriptionText extends StatelessWidget {
  const  SignupDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
                      AppStrings.descriptionSignUp,
                        textAlign: TextAlign.center,
                        style: AppStyles.getRegularStyle(),
                      );
  }
}