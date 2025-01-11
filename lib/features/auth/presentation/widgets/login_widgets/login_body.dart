import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
import 'package:untitled/features/auth/presentation/widgets/login_widgets/login_bloc_consumer.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginBlocConsumer();
  }
}
