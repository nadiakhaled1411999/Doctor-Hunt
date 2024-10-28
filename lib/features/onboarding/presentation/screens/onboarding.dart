import 'package:untitled/core/routing/route_export_features/export_onboarding/route_export_onboarding.dart';







class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBody()
    );
  }
}
