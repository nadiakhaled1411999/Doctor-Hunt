

import 'route_export.dart';
class DocdtorHuntRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.OnboardingPage:
        return MaterialPageRoute(
           builder: (context) => const OnboardingPage(),
         );
      case Routes.LoginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.SignUpScreen:
        return MaterialPageRoute(builder: (cotext) => const SignUpScreen());
      case Routes.HomeScreen:
        return MaterialPageRoute(builder:  (context) => HomeScreen());
 
      default:
        return null;
      // MaterialPageRoute(
      //   builder: (context) => Scaffold(
      //     body: Center(
      //       child: Text(
      //         "No route defined for ${settings.name}",
      //       ),
      //     ),
      //   ),
      // );
    }
  }
}
// The code snippet is a class named AppRouter that contains a method
// generateRoute which determines the route to be displayed based
// on the provided settings.
// The method generateRoute takes a settings object as input.
// It checks the name property of the settings object using a switch statement.
// If the name matches Routes.onBoardingScreen, it returns a
// MaterialPageRoute with a screen.
// If the name matches Routes.loginScreen, it returns a
// MaterialPageRoute with a screen.
// If no match is found, it returns a MaterialPageRoute with a Scaffold
// displaying a message indicating the route name that was not defined.
