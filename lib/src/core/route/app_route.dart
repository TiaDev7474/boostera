import 'package:boostera/src/common/constants/routes.dart' as route_path;
import 'package:boostera/src/features/event/ui/pages/event_detail_page.dart';
import 'package:boostera/src/features/event/ui/pages/events_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/app_overview/ui/pages/home_page.dart';



class AppRouter {
  static final AppRouter _instance = AppRouter._internal();
  static GlobalKey<NavigatorState> generateKey(String label) {
    return GlobalKey<NavigatorState>(debugLabel: label);
  }
  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
  static late final GoRouter router;
  static AppRouter get instance => _instance;
  factory AppRouter() {
    return _instance;
  }

  AppRouter._internal() {
    router = GoRouter(
        debugLogDiagnostics: true,
        navigatorKey: _rootNavigatorKey,
        initialLocation: route_path.homePage,
        routes: [
          StatefulShellRoute.indexedStack(
              branches: [
                StatefulShellBranch(
                   navigatorKey: generateKey('home'),
                    routes: [
                      GoRoute(
                          path: route_path.homePage,
                          pageBuilder: (context , state) {
                            return getPage(
                                child: const HomePage(),
                                state: state
                            );
                          }
                      )
                    ]
                ),
                StatefulShellBranch(
                    navigatorKey: generateKey('destination'),
                    routes: [
                      GoRoute(
                          path: route_path.destinationPage,
                          pageBuilder: (context, state) {
                            return getPage(
                                child: Column(
                                  children: [
                                     const Text("destionation"),
                                      ElevatedButton(
                                          onPressed: (){
                                              AppRouter.router.go(route_path.destinationDetailPage);
                                          },
                                          child: const Text("go to details")
                                      )
                                  ]
                                ),
                                state: state
                            );
                          },
                          routes: [
                             GoRoute(
                                 path: route_path.destinationDetailPage,
                                 pageBuilder: (context, state) {
                                    return getPage(
                                        child: const Text('destination detail'),
                                        state: state
                                    );
                                 }
                             )
                          ]
                      )
                    ]
                ),
                StatefulShellBranch(
                    navigatorKey: generateKey("event") ,
                    routes: [
                      GoRoute(
                          path: route_path.eventPage,
                          pageBuilder: (context, state) {
                            return getPage(
                                child: const EventPage(), 
                                state: state
                            );
                          },
                          routes: [
                            GoRoute(
                                path: route_path.eventDetailPage,
                                pageBuilder: (context, state) {
                                  return getPage(
                                      child: EventDetails(eventId: state.pathParameters['id']!,),
                                      state: state
                                  );
                                }
                            )
                          ]
                      )
                    ]
                )
              ],
              builder: (BuildContext context, GoRouterState state,StatefulNavigationShell navigationShell){
                return ScaffoldWithNestedNavigation(
                      child: navigationShell
                );
              }
          )
        ]
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return MaterialPage(
        key: state.pageKey,
        child: child
    );
  }
}

class ScaffoldWithNestedNavigation extends StatelessWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.child
  }): super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell child;
  void _goBranch(int index) {
    child.goBranch(
        index,
        initialLocation: index == child.currentIndex
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: child,
       ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: child.currentIndex,
        selectedItemColor: Colors.black87,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Explore'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label:'Events'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined),
              label: 'You'
          )
        ],
        onTap: _goBranch,
      ),

    );
  }
}
