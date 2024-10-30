 
 import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

class LoginDescriptionText extends StatelessWidget {
const LoginDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppStrings.descriptionLogin,
                      textAlign: TextAlign.center,
                      style: AppStyles.getRegularStyle(fontSize: 15),
                    );
    
    
  }
}