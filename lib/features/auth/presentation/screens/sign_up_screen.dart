



import 'package:untitled/core/routing/route_export_features/export_auth/export_signup.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SignUpBody(),
    ));
  }
}
