import 'package:catering/feature/login/presentation/page/login_page.dart';

class AppRouter {
  Future<String> get initialRoute async{
    
    return LoginPage.routeName;
  }
}
