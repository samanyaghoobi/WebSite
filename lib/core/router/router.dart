import 'package:go_router/go_router.dart';
import 'package:personal_web_site/core/router/routes.dart';
import 'package:personal_web_site/ui/Error/error_page.dart';
import 'package:personal_web_site/ui/home_page/home_page.dart';

class MyRouter{
  static final GoRouter router=GoRouter(
    initialLocation: MyRoutes.defualtRoute,
    errorBuilder: (context, state) => ErrorPage(),
    routes: [
    GoRoute(path: MyRoutes.rootRoute,builder: (context, state) => HomePage()),
    GoRoute(path: MyRoutes.defualtRoute,name: MyRoutes.defualtRouteName,builder: (context, state) => HomePage()),
    GoRoute(path: MyRoutes.errorRoute,name: MyRoutes.errorRouteName,builder: (context, state) => ErrorPage()),
  ]);
}