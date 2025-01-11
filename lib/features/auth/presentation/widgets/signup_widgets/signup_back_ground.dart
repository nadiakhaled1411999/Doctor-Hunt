import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';
class SignupBackGround extends StatelessWidget {
  const SignupBackGround({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        AppAssets.login,
        fit: BoxFit.cover,
      ),
    );
  }
}
