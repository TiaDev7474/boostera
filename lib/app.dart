import 'package:boostera/src/core/route/app_route.dart';
import 'package:boostera/src/features/app_overview/bloc/bloc/category.bloc.dart';
import 'package:boostera/src/features/app_overview/repositories/category.repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BossteraApp extends StatelessWidget {
  const BossteraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>CategoryBloc(
        GetIt.instance<CategoryRepository>()
      ))

    ], child: MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    ));
  }
}
