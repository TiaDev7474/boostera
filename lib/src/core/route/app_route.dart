
import 'dart:js';

import 'package:boostera/src/common/constants/routes.dart' as route_path;
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
      routes: [
        GoRoute(
          path: route_path.homePage,
          pageBuilder: (context, state) {

          }
        )
      ]
  )
}
